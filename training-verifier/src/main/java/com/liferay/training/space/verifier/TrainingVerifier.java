package com.liferay.training.space.verifier;

import com.liferay.portal.kernel.security.auth.AccessControlContext;
import com.liferay.portal.kernel.security.auth.AuthException;
import com.liferay.portal.kernel.security.auth.tunnel.TunnelAuthenticationManagerUtil;
import com.liferay.portal.kernel.security.auth.verifier.AuthVerifier;
import com.liferay.portal.kernel.security.auth.verifier.AuthVerifierResult;
import com.liferay.portal.kernel.servlet.HttpHeaders;
import com.liferay.portal.kernel.util.StringPool;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.osgi.service.component.annotations.Component;


		@Component(
				immediate = true,
				configurationPid = "com.liferay.training.space.verifier",
						property = {
								"auth.verifier.pipeline=com.liferay.training.space.verifier.TrainingVerifier",
								"auth.verifier.TrainingVerifier.urls.includes=/api/jsonws/*,/*"
								},
				name = "training.auth.verifier.configuration.name",
				service = AuthVerifier.class
			)
							
public class TrainingVerifier implements AuthVerifier {

			@Override
			public String getAuthType() {
				// TODO Auto-generated method stub
				
				return HttpServletRequest.BASIC_AUTH;
				
			}

			
				@Override
					public AuthVerifierResult verify(
							AccessControlContext accessControlContext, Properties properties)
						throws AuthException {

						System.out.println("If I were a magician, this is where the magic would happen.");
						AuthVerifierResult authVerifierResult = new AuthVerifierResult();

						try {
							String[] credentials = verify(accessControlContext.getRequest());

							if (credentials != null) {
								authVerifierResult.setPassword(credentials[1]);
								authVerifierResult.setState(AuthVerifierResult.State.SUCCESS);
								authVerifierResult.setUserId(Long.valueOf(credentials[0]));
							}
						}
						catch (AuthException ae) {
			
							HttpServletResponse response = accessControlContext.getResponse();
			
			
			
							try (ObjectOutputStream objectOutputStream =
									new ObjectOutputStream(response.getOutputStream())) {

								objectOutputStream.writeObject(ae);

								authVerifierResult.setState(
									AuthVerifierResult.State.INVALID_CREDENTIALS);
								System.out.println("NOT VERIFIED!");

							}
							catch (IOException ioe) {

								throw ae;
							}
						}

						return authVerifierResult;
					}

					protected String[] verify(HttpServletRequest request) throws AuthException {
						String authorization = request.getHeader(HttpHeaders.AUTHORIZATION);

						if (authorization == null) {
							return null;
						}
		
						else {
			
						String[] credentials = new String[2];

						long userId = TunnelAuthenticationManagerUtil.getUserId(request);

						credentials[0] = String.valueOf(userId);

						credentials[1] = StringPool.BLANK;

						return credentials;
						}
					}
				
}