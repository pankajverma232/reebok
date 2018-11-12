<p><strong>&nbsp;</strong></p>
<h1 style="text-align: center;"><strong>Native SSO&nbsp;Login</strong></h1>
<p>&nbsp;</p>
<h2><strong>Documents versions</strong><span style="font-weight: 400;">:</span></h2>
<table style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td>
<p><strong>Name</strong></p>
</td>
<td>
<p><strong>Version</strong></p>
</td>
<td>
<p><strong>Date Modified</strong></p>
</td>
<td>
<p><strong>Comments</strong></p>
</td>
<td>
<p><strong>Written By</strong></p>
</td>
<td>
<p><strong>&nbsp;Reviewed By</strong></p>
</td>
</tr>
<tr>
<td>
<p><span style="font-weight: 400;">Cross app Native SSO Integration</span></p>
</td>
<td>
<p><span style="font-weight: 400;">1.0</span></p>
</td>
<td>
<p><span style="font-weight: 400;">20-03-2017</span></p>
</td>
<td>
<p class="p1">Initial version of cross app SSO Integration</p>
</td>
<td>
<p><span style="font-weight: 400;">Amit Chouhan</span></p>
<p><span style="font-weight: 400;">Pankaj Verma</span></p>
</td>
<td>
<p><span style="font-weight: 400;">Amit Chouhan</span></p>
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td>
<p><span style="font-weight: 400;">Cross app Native SSO Integration</span></p>
</td>
<td>2.3</td>
<td>20-03-2017</td>
<td>
<p>Deprecated old APIs</p>
<p>Added new APIs</p>
</td>
<td>Pankaj Verma</td>
<td>Amit Chouhan</td>
</tr>
<tr>
<td>
<p><span style="font-weight: 400;">Cross app Native SSO Integration</span></p>
</td>
<td>2.3</td>
<td>12-11-2018</td>
<td>Added Gdpr Support.</td>
<td>Pankaj Verma</td>
<td>&nbsp;Amit Chouhan</td>
</tr>
</tbody>
</table>
<h2><br /><strong>Table of Contents&nbsp;</strong></h2>
<ul>
<li>Introduction&nbsp;</li>
<li><span style="font-weight: 400;">User Profile Handling</span>&nbsp;</li>
<li><span style="font-weight: 400;">Local and Global login sessions</span>&nbsp;</li>
<li><span style="font-weight: 400;">Prerequisites to use Cross app SSO</span>&nbsp;</li>
<li><span style="font-weight: 400;">SSO Plug-in available for different Platforms</span>&nbsp;</li>
<li><span style="font-weight: 400;">iOS</span><span style="font-weight: 400;">&nbsp;Installation:</span>&nbsp;</li>
<li><span style="font-weight: 400;">FAQ</span>&nbsp;<span style="font-weight: 400;">&nbsp;</span></li>
</ul>
<p>&nbsp;</p>
<h2><strong>&nbsp;Introduction</strong></h2>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Cross app Native SSO Integration is an authentication system that permits a user to login with email/ mobile and password/OTP on a single app and get auto login on across the Times network with cross app SSO integration.</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">SSO - Single Sign On centrally manages the authentication of users across the Times network. SSO handles both the sub domain and cross domain login.</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">It allows users to connect over cross domain sites without using their credentials.</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">For registration/login, at least one of email address or mobile is required. It is possible for a SSO user to have only email and no mobile, or vice versa or both. If the user has both email and mobile in his profile, he will be able to login using either of them as the identifier.</span></p>
<p style="padding-left: 30px;">&nbsp;</p>
<h2><strong><strong>User Profile Handling</strong></strong></h2>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Basic user profile is taken care by SSO which includes</span></p>
<ul>
<li style="font-weight: 400;"><span style="font-weight: 400;"><strong>User Name</strong>:&nbsp;</span><em><span style="font-weight: 400;">first name and last name</span></em></li>
<li style="font-weight: 400;"><strong>Date of birth</strong></li>
<li style="font-weight: 400;"><span style="font-weight: 400;"><strong>Email</strong>:&nbsp;</span><em><span style="font-weight: 400;">maximum 3 emails</span></em></li>
<li style="font-weight: 400;"><span style="font-weight: 400;"><strong>Mobile</strong>:&nbsp;</span><em><span style="font-weight: 400;">maximum 1 mobile number</span></em></li>
<li style="font-weight: 400;"><span style="font-weight: 400;"><strong>Social Account</strong>:&nbsp;</span><em><span style="font-weight: 400;">Fb, Gp</span></em></li>
<li style="font-weight: 400;"><span style="font-weight: 400;"><strong>Gender</strong>:&nbsp;</span><em><span style="font-weight: 400;">Mr. and Mrs.</span></em></li>
<li style="font-weight: 400;"><span style="font-weight: 400;"><strong>User Image</strong>: &nbsp;</span><em><span style="font-weight: 400;">profile pic</span></em></li>
<li style="font-weight: 400;"><span style="font-weight: 400;"><strong>Password</strong>:&nbsp;</span><em><span style="font-weight: 400;">User can change or update their password</span></em></li>
</ul>
<p>&nbsp;</p>
<h2><strong><strong>Global and App Session</strong></strong></h2>
<p style="padding-left: 30px;"><span style="font-weight: 400;">SSO will introduce global and local/App login session on the app in native version. Global session will be accessible to all the Apps of the (TIL) family while App session will be private for App. App session will identify if App is in login state, log out state, installed first time etc. Session stores following credentials:</span></p>
<ul>
<li><strong>tgId</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><em><span style="font-weight: 400;">unique for a device.</span></em></li>
<li><strong>ssec</strong><span style="font-weight: 400;">:&nbsp;</span><em><span style="font-weight: 400;">encrypted form of ssoid</span></em></li>
<li><strong>ticketId</strong><span style="font-weight: 400;">:&nbsp;</span><em><span style="font-weight: 400;">ticket id of logged in user.</span></em></li>
<li><strong>type</strong><span style="font-weight: 400;">:&nbsp;</span><em><span style="font-weight: 400;">type of login (facebook,Google plus or sso(email/mobile))</span></em></li>
<li><strong>identifier</strong><span style="font-weight: 400;">:&nbsp;</span><em><span style="font-weight: 400;">will be user&rsquo;s email/mobile number if login with email/mobile (i.i. sso)</span></em></li>
</ul>
<p style="padding-left: 30px;"><span style="font-weight: 400;">App session&rsquo;s &nbsp;</span><strong>ssec</strong><span style="font-weight: 400;">&nbsp;confirms if App is in login state. Empty&nbsp;</span><strong>type</strong><span style="font-weight: 400;">&nbsp;states no login type found i.e. App is doing login for the first time.&nbsp;</span><br /><br /></p>
<h2><strong><strong>Pre-requisites to use Cross app SSO</strong></strong></h2>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Business needs to provide the following properties which enables the app &nbsp;to use Central created by SSO: -</span></p>
<table style="width: 910px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 54px;">
<p><strong>Property</strong></p>
</td>
<td style="width: 495px;">
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;</span><strong>Description</strong></p>
</td>
<td style="width: 248px;">
<p><strong>&nbsp;&nbsp;Example(timesofindia.indiatimes.com)</strong></p>
</td>
<td style="width: 89px;">
<p><strong>Mandatory(M)</strong></p>
<p><strong>/ &nbsp;Optional(O)</strong></p>
</td>
</tr>
<tr>
<td style="width: 54px;">
<p><strong>Channel</strong></p>
</td>
<td style="width: 495px;">
<p><span style="font-weight: 400;">Name of channel used by application. It is defined by business.</span></p>
</td>
<td style="width: 248px;">
<p><span style="font-weight: 400;">toicrossappnew</span></p>
</td>
<td style="width: 89px;">
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M</span></p>
</td>
</tr>
<tr>
<td style="width: 54px;">
<p><strong>Site Id</strong></p>
</td>
<td style="width: 495px;">
<p><span style="font-weight: 400;">Name of site Id used by SSO BACKEND to authenticate the channel</span></p>
</td>
<td style="width: 248px;">
<p><span style="font-weight: 400;">bb51be5a5a8a0283467e0859d262ff6g</span></p>
</td>
<td style="width: 89px;">
<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><span style="font-weight: 400;">M</span></p>
</td>
</tr>
<tr>
<td style="width: 54px;">
<p><strong>Team Id</strong></p>
</td>
<td style="width: 495px;">
<p><span style="font-weight: 400;">Apple Developer Team Id. You can find your Team Id in Apple developer member center.</span></p>
</td>
<td style="width: 248px;">
<p><span style="font-weight: 400;">&lt;apple developer team id&gt;</span></p>
</td>
<td style="width: 89px;">
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;M</span></p>
</td>
</tr>
</tbody>
</table>
<h2><strong><br />&nbsp;iOS Installation</strong></h2>
<p style="padding-left: 30px;"><span style="font-weight: 400;">SDK can be included in project using cocoa pod. SDK is written in objective-c and can be implemented in both Objective-c and Swift projects. Facebook and Google plus pods are included externally to avoid any kind of transitive dependencies in Swift projects.&nbsp;</span><br /><strong>Pod file</strong></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Include following in your podfile.</span><span style="font-weight: 400;"> &nbsp;</span>&nbsp;</p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">pod 'NativeSSOLogin', :git =&gt;'https://bitbucket.org/agi_sso/nativessologin.git'</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">(Warning: If you are coping above recheck the formats of symbols like &lsquo; and &rdquo;&rdquo; )</span></p>
<h2 style="text-align: left;"><br /><strong>&nbsp;Project Setting&nbsp;</strong></h2>
<p style="padding-left: 30px;">&nbsp;<strong><strong>Enable Keychain&nbsp;sharing</strong></strong>&nbsp;</p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Go to,</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Project setting &mdash;&gt; Capabilities &mdash;&gt; Keychain sharing:&nbsp;</span><span style="font-weight: 400; color: #ff0000;">ON</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">keychain groups:&nbsp;</span><strong>com.til.shared&nbsp;</strong></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">(User&rsquo;s login credentials are kept in keychain. To share credentials among various apps of same family/devTeam a group(</span><span style="font-weight: 400;">com.til.shared</span><span style="font-weight: 400;">) is created. group+teamId identify the shared keychain. Credentials stored in shared keychain are kept in encrypted form and not accessible by any third party app).</span></p>
<p style="padding-left: 30px;">&nbsp;</p>
<h2><strong>List of APIs</strong></h2>
<p style="padding-left: 30px;"><span style="font-weight: 400;">typedef void (^errorBlock) (NSError * &nbsp;_Nullable error);</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">typedef void (^voidBlock) (void);</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">typedef void (^infoBlock) (NSDictionary *info);</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">typedef void (^completionBlock) (NSDictionary * _Nullable info,NSError * _Nullable error);</span></p>
<p style="padding-left: 30px;">&nbsp;</p>
<table style="width: 867px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 721px;">
<p><span style="font-weight: 400;">INITIALIZE SDK (deprecated)</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 721px;">
<p><span style="font-weight: 400;">-(void)</span><strong>ssoSetupForChannel</strong><span style="font-weight: 400;">: (NSString *)channel</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>siteId</strong><span style="font-weight: 400;">: (NSString *)siteid</span></p>
<p><span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><strong>teamId</strong><span style="font-weight: 400;">: (NSString *)teamId</span></p>
<p><span style="font-weight: 400;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><strong>completion</strong><span style="font-weight: 400;">: (completionBlock)completion;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 721px;">
<p style="text-align: left;"><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string</span></p>
<p><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /><br /></span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong></p>
</td>
<td style="width: 721px;">
<p><span style="font-weight: 400;">This API must return with no error for login to work.</span></p>
<br />
<p><span style="font-weight: 400;">Default base urls for SSO are</span></p>
<p><strong>jsso.indiatimes.com</strong></p>
<p><strong>socialappsintegrator.indiatimes.com</strong></p>
<p><span style="font-weight: 400;">For Gaana team (or any other team who have their own server they) can configure like below&nbsp;</span><em><span style="font-weight: 400;">just after initializaion</span></em><span style="font-weight: 400;">:</span></p>
<p><span style="font-weight: 400;">&nbsp;</span><span style="font-weight: 400;">loginManager.nssoBaseUrl = &lt;&gt;;</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;loginManager.nssoMSocialBaseUrl = &lt;&gt;;</span></p>
<br /><br /><br /></td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="height: 372px; width: 867px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 166px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 687px;">
<p><span style="font-weight: 400;">MIGRATE EXISTING SESSION</span></p>
</td>
</tr>
<tr>
<td style="width: 166px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 687px;"><br />
<p><span style="font-weight: 400;">-(void)</span><strong>migrateCurrentSessionToAppHavingTicketId</strong><span style="font-weight: 400;">: (NSString *)ticketId</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>completion</strong><span style="font-weight: 400;">: (completionBlock)completion;</span></p>
</td>
</tr>
<tr>
<td style="width: 166px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 687px;">
<p><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /><br /></span></p>
</td>
</tr>
<tr>
<td style="width: 166px;">
<p><strong>Special Instruction</strong></p>
</td>
<td style="width: 687px;">
<p><span style="font-weight: 400;">Sending blank or NULL ticket id assume no session is available.</span></p>
<br />
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">-(void)</span><strong>migrateOtherSession</strong><span style="font-weight: 400;">:(SSOMigrateSession *)migrateSession</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;completionHandler:(completionBlock)completion;</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 870px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 726px;">
<p><span style="font-weight: 400;">GET APP SESSION</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 726px;"><br />
<p><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)</span><strong>getAppSessionOnCompletion</strong><span style="font-weight: 400;">:(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">(^)(</span><span style="font-weight: 400;">NSDictionary</span><span style="font-weight: 400;">&nbsp;*info,</span><span style="font-weight: 400;">NSError</span><span style="font-weight: 400;">&nbsp;* error))completion</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 726px;">
<p><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 726px;">
<p><span style="font-weight: 400;">if&nbsp;</span><strong>type</strong><span style="font-weight: 400;">&nbsp;is empty, this is new app login</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;"><br /></span><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)</span><strong>getSSOAppSessionOnCompletion</strong><span style="font-weight: 400;">:(</span><span style="font-weight: 400;">sessionBlock</span><span style="font-weight: 400;">)completion;</span><span style="font-weight: 400;"><br />&nbsp;<br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 873px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 729px;">
<p><span style="font-weight: 400;">GET GLOBAL SESSION</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 729px;"><br />
<p><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)</span><strong>getGlobalSessionOnCompletion</strong><span style="font-weight: 400;">:(</span><span style="font-weight: 400;">completionBlock</span><span style="font-weight: 400;">)completion</span></p>
<p><span style="font-weight: 400;"><br /><br /></span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 729px;">
<p><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4103 : SESSION_NOT_FOUND</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong></p>
</td>
<td style="width: 729px;"><br />
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span></p>
<br />
<p><span style="font-weight: 400;">-(void)</span><strong>getGlobalSessionWithUserDataEnabled:</strong><span style="font-weight: 400;">(Boolean)userDataEnabled</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>completion</strong><span style="font-weight: 400;">: (completionBlock)completion;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">Note :&nbsp;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">If UserDataEnabled is set to True , response will contains basic user details along with Global session.</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 872px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 728px;">
<p><span style="font-weight: 400;">COPY GLOBAL SESSION</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 728px;"><br />
<p><span style="font-weight: 400;">-(void)</span><strong>copySSOGlobalSessioToAppOnCompletion</strong><span style="font-weight: 400;">: (completionBlock)completion</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 728px;">
<p><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4103 : SESSION_NOT_FOUND</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong></p>
</td>
<td style="width: 728px;">
<p><span style="font-weight: 400;">If app prefer to use crosswalk then by using this api app can copy global session to local.</span></p>
<p><span style="font-weight: 400;">If user is not present then also app can use global session</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 875px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 731px;">
<p><span style="font-weight: 400;">GET LOGIN OTP</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 731px;">
<p><span style="font-weight: 400;">-(void)</span><strong>sendLoginOtpOnEmail</strong><span style="font-weight: 400;">: (NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>mobile</strong><span style="font-weight: 400;">: (NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
<br /><br /></td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
<br /><br /><br /></td>
<td style="width: 731px;">
<p><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">427 : PROXY_OR_DEFUNC_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">428 : INDIATIMES_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">405 : UNVERIFIED_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">407 : UNREGISTERED_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">403 : INVALID_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string</span>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 878px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 734px;">
<p><span style="font-weight: 400;">RESEND LOGIN OTP</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 734px;">
<p><span style="font-weight: 400;">-(void)</span><strong>resendLoginOTPOnEmail</strong><span style="font-weight: 400;">: (NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>mobile</strong><span style="font-weight: 400;">: (NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
<br /><br /></td>
</tr>
<tr>
<td style="width: 132px;"><br /><br />
<p><strong>Possible Error Codes:</strong></p>
<br /><br /><br /><br /><br /><br /></td>
<td style="width: 734px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">402 : INVALID_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">408 : UNREGISTERED_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">406 : UNVERIFIED_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">427 : PROXY_OR_DEFUNC_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">428 : INDIATIMES_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">405 : UNVERIFIED_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">407 : UNREGISTERED_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">403 : INVALID_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string</span>&nbsp;&nbsp;</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 874px; margin-left: auto; margin-right: auto;">
<tbody>
<tr style="height: 35.0781px;">
<td style="width: 132px; height: 35.0781px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 736px; height: 35.0781px;">
<p><span style="font-weight: 400;">VERIFY LOGIN OTP or PASSWORD</span></p>
</td>
</tr>
<tr style="height: 170px;">
<td style="width: 132px; height: 170px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 736px; height: 170px;">
<p><span style="font-weight: 400;">-(void)</span><strong>verifyLoginOtpPassword</strong><span style="font-weight: 400;">: (NSString *)password</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>email</strong><span style="font-weight: 400;">: (NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>mobile</strong><span style="font-weight: 400;">: (NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
<br /><br /></td>
</tr>
<tr style="height: 139px;">
<td style="width: 132px; height: 139px;"><br /><br /><br /><br /><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 736px; height: 139px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">402 : INVALID_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">408 : UNREGISTERED_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">406 : UNVERIFIED_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">427 : PROXY_OR_DEFUNC_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string</span></p>
</td>
</tr>
<tr style="height: 13px;">
<td style="width: 132px; height: 13px;">&nbsp;</td>
<td style="width: 736px; height: 13px;">&nbsp;</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td>
<p><strong>API Name</strong></p>
</td>
<td>
<p><span style="font-weight: 400;">LOGIN USING SOCIAL INFO</span></p>
</td>
</tr>
<tr>
<td>
<p><strong>API Signature:</strong></p>
<br /><br /><br /></td>
<td>
<p><span style="font-weight: 400;">-(void)</span><strong>loginUsingSocialInfo</strong><span style="font-weight: 400;">: (NSDictionary *)info</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td>
<p><strong>Possible Error Codes:</strong></p>
</td>
<td>
<p><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4100 : DATA_NIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4104 : OAUTH_ID_NOT_FOUND</span></p>
<p><span style="font-weight: 400;">4105 : OAUTH_SITE_ID_NOT_FOUND</span></p>
<p><span style="font-weight: 400;">4106 : ACCESS_TOKEN_NOT_FOUND</span></p>
</td>
</tr>
<tr>
<td>
<p><strong>Special Instructions</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td><br />
<p><span style="font-weight: 400;">For login using social info first get get SocialInfo (oauthId, accessToken) and Add [oauthSiteId:&rdquo;facebook&rdquo;] as well.</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">{</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;accessToken = EAAJs0MF8KTcBALGCa3rXm65aeySndxlTuJjs5P4eFiC1kh77xqpgVZA6MEmUrZAySf4oZAzqKuSLY9oi2hNRItJUf8Q5K</span></p>
<p><span style="font-weight: 400;">LGleCcWZB5EkxWOefbZCXQ5DJQJw4prSFlNpENzoQgMq9eYG4Wcucn1yWL9mIxRYFXzq47B8ZBsw29tHWloKxWnIWpsXctLZARHw4J5</span></p>
<p><span style="font-weight: 400;">rjH4NSAbTM0RtamUt0XO1d77DZAie9zmp9SNFY7hsAZDZD;</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;oauthId = 785865238234666;</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;oauthsiteid = facebook;</span></p>
<p><span style="font-weight: 400;">}</span></p>
<p><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">And pass it to the above function as key: Value Pair. You will get info in response. use this info for login to sso.</span></p>
<br />
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span></p>
<br />
<p><span style="font-weight: 400;">-(void)</span><strong>performSocialActivity</strong><span style="font-weight: 400;">:(SSOSocialActivityOptions)option</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usingSocialInfo:(SSOSocialInfo * _Nullable)info</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
<p><span style="font-weight: 400;">Pass info like this</span></p>
<p><span style="font-weight: 400;">SSOSocialInfo *si = [[SSOSocialInfo alloc] init];</span></p>
<br />
<p><strong>Facebook and Google</strong></p>
<p><span style="font-weight: 400;">si.accessToken</span><span style="font-weight: 400;">&nbsp;= &lt;&gt;</span></p>
<p><span style="font-weight: 400;">&nbsp;</span><span style="font-weight: 400;">si.oauthId</span><span style="font-weight: 400;">&nbsp;= &lt;&gt;</span></p>
<br />
<p><span style="font-weight: 400;">If Mobile is coming in facebook response (i.e. Facebook has mobile permission) then also set following property :</span></p>
<p><span style="font-weight: 400;">si.user_mobile_phone = true;</span></p>
<br /><br />
<p><strong>Truecaller</strong></p>
<p><span style="font-weight: 400;">si.payload = &lt;&gt;</span></p>
<p><span style="font-weight: 400;">si.signature =&lt;&gt;</span></p>
<br />
<p><strong>GSMA</strong></p>
<p><span style="font-weight: 400;">si.phoneNumber = &lt;&gt;;</span></p>
<p><span style="font-weight: 400;">si.gsmaToken = &lt;&gt;;</span></p>
<br />
<p><span style="font-weight: 400;"><br /><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td>
<p><strong>API Name</strong></p>
</td>
<td>
<p><span style="font-weight: 400;">REGISTER USER</span></p>
</td>
</tr>
<tr>
<td>
<p><strong>API Signature:</strong></p>
<br /><br /><br /></td>
<td>
<p><span style="font-weight: 400;">-(void)</span><strong>registerUser</strong><span style="font-weight: 400;">: (NSString *)name</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>mobile</strong><span style="font-weight: 400;">: (NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>email</strong><span style="font-weight: 400;">: (NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>password</strong><span style="font-weight: 400;">: (NSString *)password</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>gender</strong><span style="font-weight: 400;">: (NSString *)gender</span></p>
<p><strong>isSendOfferEnabled</strong><span style="font-weight: 400;">:(BOOL)isSendOfferEnabled</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure</span></p>
</td>
</tr>
<tr>
<td>
<p><strong>Possible Error Codes:</strong></p>
</td>
<td>
<p><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">420 : INVALID_NAME</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">421 : INVALID_GENDER</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">403 : INVALID_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">402 : INVALID_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">417 : INVALID_PASSWORD</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">429: ALREADY_REGISTERED_USER</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /><br /></span></p>
</td>
</tr>
<tr>
<td>
<p><strong>Special Instruction</strong></p>
<br /><br /></td>
<td>
<p><span style="font-weight: 400;">User can provide either mobile or email or both. After SignUp, User willl get an OTP on mobile (if mobile is blank OTP will be send&nbsp;</span></p>
<p><span style="font-weight: 400;">on email)&nbsp;</span><span style="font-weight: 400;">and then call verifySignUpUser to verify this OTP.</span><span style="font-weight: 400;"><br /><br /></span></p>
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span></p>
<br />
<p><span style="font-weight: 400;">-(void)</span><strong>performSignupActivity</strong><span style="font-weight: 400;">:(SSOSignupOptions)options</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;forUser:(SSOSignupUser *)user</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
<br />
<p><span style="font-weight: 400;">Note: SSOFullSignup, SSOOnlyMobileSignup are the two&nbsp;</span><span style="font-weight: 400;">SSOSignupOptions.</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 870px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 724px;">
<p><span style="font-weight: 400;">VERIFY SIGNUP OTP</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 724px;">
<p><span style="font-weight: 400;">-(void)</span><strong>verifySignUpOTP</strong><span style="font-weight: 400;">: (NSString *)otp</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>email</strong><span style="font-weight: 400;">: (NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>mobile</strong><span style="font-weight: 400;">: (NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
<br /><br /></td>
<td style="width: 724px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">424 : INVALID_OTP</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">403 : INVALID_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">402 : INVALID_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">429 : ALREADY_REGISTERED_USER</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">416 : LIMIT_EXCEEDED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">414 : WRONG_OTP</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">415 : EXPIRED_OTP</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong></p>
</td>
<td style="width: 724px;">
<p><span style="font-weight: 400;">If User does not get OTP, call resendSignUpOtp</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 866px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 720px;">
<p><span style="font-weight: 400;">RESEND SIGNUP OTP</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 720px;">
<p><span style="font-weight: 400;">-(void)</span><strong>resendSignUpOtpForEmail</strong><span style="font-weight: 400;">: (NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>mobile</strong><span style="font-weight: 400;">: (NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
<br /><br /></td>
<td style="width: 720px;">
<p><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">403 : INVALID_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">402 : INVALID_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">429 : ALREADY_REGISTERED_USER</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">407 : UNREGISTERED_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 863px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 717px;">
<p><span style="font-weight: 400;">CHANGE USER PASSWORD</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 717px;">
<p><span style="font-weight: 400;">-(void)</span><strong>changePassword</strong><span style="font-weight: 400;">: (NSString *)oldPassword</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>newPassword</strong><span style="font-weight: 400;">: (NSString *)newPassword</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>confirmPassword</strong><span style="font-weight: 400;">: (NSString *)confirmPassword</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
<br /><br /><br /></td>
<td style="width: 717px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">404 : UNAUTHORIZED_ACCESS</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">417 : INVALID_PASSWORD</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">418 : PASSWORD_MATCHES_LAST_THREE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">419 : WRONG_PASSWORD</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 857px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 711px;">
<p><span style="font-weight: 400;">SEND FP OTP</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 711px;">
<p><span style="font-weight: 400;">-(void)</span><strong>getForgotPasswordOTPForEmail</strong><span style="font-weight: 400;">: (NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>mobile</strong><span style="font-weight: 400;">: (NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 711px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">408 : UNREGISTERED_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">406 : UNVERIFIED_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">402 : INVALID_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">410 : INVALID_IDENTIFIER</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">411 : TOKEN_GENERATION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">412 : SMS_FAILURE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 853px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132.5px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 710.5px;">
<p><span style="font-weight: 400;">RESEND FP OTP</span></p>
</td>
</tr>
<tr>
<td style="width: 132.5px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 710.5px;">
<p><span style="font-weight: 400;">-(void)</span><strong>resendForgotPasswordOTPForEmail</strong><span style="font-weight: 400;">: (NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>mobile</strong><span style="font-weight: 400;">: (NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132.5px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 710.5px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">407 : UNREGISTERED_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">406 : UNVERIFIED_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">402 : INVALID_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">410 : INVALID_IDENTIFIE</span>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 854px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 708px;">
<p><span style="font-weight: 400;">VERIFY FORGOT PASSWORD</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 708px;">
<p><span style="font-weight: 400;">-(void)</span><strong>verifyForgotPasswordForEmail</strong><span style="font-weight: 400;">: (NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>mobile</strong><span style="font-weight: 400;">: (NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>otp</strong><span style="font-weight: 400;">: (NSString *)otp</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>password</strong><span style="font-weight: 400;">: (NSString *)password</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>confirmPassword</strong><span style="font-weight: 400;">: (NSString *)confirmPassword</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 708px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">417 : INVALID_PASSWORD</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">418 : PASSWORD_MATCHES_LAST_THREE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">419 : WRONG_PASSWORD</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 852px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 706px;">
<p><span style="font-weight: 400;">GET USER DETAILS</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 706px;">
<p><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)</span><strong>getUserDetails</strong><span style="font-weight: 400;">:(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">(^)(</span><span style="font-weight: 400;">NSDictionary</span><span style="font-weight: 400;">&nbsp;*info))success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">(^)(</span><span style="font-weight: 400;">NSError</span><span style="font-weight: 400;">&nbsp;*&nbsp;</span><span style="font-weight: 400;">_Nullable</span><span style="font-weight: 400;">&nbsp;error))failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 706px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">404 : UNAUTHORIZED_ACCESS</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 706px;">
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)</span><strong>getUserDetailsOnCompletion</strong><span style="font-weight: 400;">:(</span><span style="font-weight: 400;">userDetailsBlock</span><span style="font-weight: 400;">)completion;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 853px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 707px;">
<p><span style="font-weight: 400;">SIGN OUT USER</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 707px;">
<p><span style="font-weight: 400;">-(void)</span><strong>signOutUser</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 707px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 851px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 705px;">
<p><span style="font-weight: 400;">UPDATE USER DETAILS</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 705px;">
<p><span style="font-weight: 400;">-(void)</span><strong>updateFirstName</strong><span style="font-weight: 400;">: (NSString *)firstName</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>lastName</strong><span style="font-weight: 400;">: (NSString *)lastName</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>dob</strong><span style="font-weight: 400;">: (NSString *)dob</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>gender</strong><span style="font-weight: 400;">: (NSString *)gender</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 705px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 705px;">
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">-(void)</span><strong>updateUserDetails</strong><span style="font-weight: 400;">:(SSOUserUpdates *)userDetails</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(userUpdatesBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
<p><span style="font-weight: 400;">Note :&nbsp;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">Set&nbsp;</span><strong>userDetails</strong><span style="font-weight: 400;">&nbsp;object properties before calling the API,</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 847px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 701px;">
<p><span style="font-weight: 400;">GET STATUS FOR USER</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 701px;">
<p><span style="font-weight: 400;">-(void)</span><strong>getStatusForIdentifier</strong><span style="font-weight: 400;">:(NSString *)identifier</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(userStatusBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 701px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Special Instruction</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 701px;">
<p><span style="font-weight: 400;">User can check if its email or mobile is registered.</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 843px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 697px;">
<p><span style="font-weight: 400;">LINK SOCIAL ACCOUNT</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 697px;">
<p><span style="font-weight: 400;">-(void)</span><strong>linkSocialAccountUsingInfo</strong><span style="font-weight: 400;">: (NSDictionary *)info</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 697px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4100 : DATA_NIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4104 : OAUTH_ID_NOT_FOUND</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4105 : OAUTH_SITE_ID_NOT_FOUND</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4106 : ACCESS_TOKEN_NOT_FOUND</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 697px;">
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">-(void)</span><strong>performSocialActivity</strong><span style="font-weight: 400;">:(SSOSocialActivityOptions)option</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usingSocialInfo:(SSOSocialInfo * _Nullable)info</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 840px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 700px;">
<p><span style="font-weight: 400;">D-LINK FACEBOOK</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 700px;">
<p><span style="font-weight: 400;">-(void)</span><strong>delinkFacebook</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 700px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 700px;">
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">-(void)</span><strong>performSocialActivity</strong><span style="font-weight: 400;">:(SSOSocialActivityOptions)option</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usingSocialInfo:(SSOSocialInfo * _Nullable)info</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 838px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 692px;">
<p><span style="font-weight: 400;">D-LINK GOOGLEPLUS</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 692px;">
<p><span style="font-weight: 400;">-(void)</span><strong>delinkGoogleplus</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span>&nbsp;</p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 692px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 692px;">
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">-(void)</span><strong>performSocialActivity</strong><span style="font-weight: 400;">:(SSOSocialActivityOptions)option</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usingSocialInfo:(SSOSocialInfo * _Nullable)info</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 837px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong><span style="font-weight: 400;"><br /><br /></span></p>
</td>
<td style="width: 691px;">
<p><span style="font-weight: 400;">UPDATE MOBILE</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 691px;">
<p><span style="font-weight: 400;">-(void)</span><strong>updateMobile</strong><span style="font-weight: 400;">: (NSString *) mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 691px;">
<p><span style="font-weight: 400;">4000:</span>&nbsp;<span style="font-weight: 400;">SDK_NOT_INITIALIZED</span></p>
<p><span style="font-weight: 400;">4001:</span>&nbsp;<span style="font-weight: 400;">NO_INTERNET_CONNECTION</span></p>
<p><span style="font-weight: 400;">4002:&nbsp;</span><span style="font-weight: 400;">REQUEST_FAILED</span></p>
<p><span style="font-weight: 400;">4003:&nbsp;</span><span style="font-weight: 400;">NETWORK_ERROR</span></p>
<p><span style="font-weight: 400;">413: &nbsp;</span>&nbsp;<span style="font-weight: 400;">INVALID_REQUEST</span></p>
<p><span style="font-weight: 400;">404: &nbsp;</span>&nbsp;<span style="font-weight: 400;">UNAUTHORIZED_ACCESS</span></p>
<p><span style="font-weight: 400;">401: &nbsp;</span>&nbsp;<span style="font-weight: 400;">INVALID_CHANNEL</span></p>
<p><span style="font-weight: 400;">402: &nbsp;</span>&nbsp;<span style="font-weight: 400;">INVALID_MOBILE</span></p>
<p><span style="font-weight: 400;">432: &nbsp;</span>&nbsp;<span style="font-weight: 400;">BLOCKED_MOBILE</span></p>
<p><span style="font-weight: 400;">433: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ALREADY_VERIFIED</span></p>
<p><span style="font-weight: 400;">400: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 836px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 690px;">
<p><span style="font-weight: 400;">Verify Updated Mobile</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 690px;">
<p><span style="font-weight: 400;">-(void)</span><strong>verifyUpdateMobileOtp</strong><span style="font-weight: 400;">:(NSString *)otp</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;forMobile:(NSString *)mobile</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 690px;">
<p><span style="font-weight: 400;">4000:&nbsp;</span><span style="font-weight: 400;">SDK_NOT_INITIALIZED</span></p>
<p><span style="font-weight: 400;">4001:&nbsp;</span><span style="font-weight: 400;">NO_INTERNET_CONNECTION</span></p>
<p><span style="font-weight: 400;">4002:&nbsp;</span><span style="font-weight: 400;">REQUEST_FAILED</span></p>
<p><span style="font-weight: 400;">4003: &nbsp;</span>&nbsp;<span style="font-weight: 400;">NETWORK_ERROR</span></p>
<p><span style="font-weight: 400;">413: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INVALID_REQUEST</span></p>
<p><span style="font-weight: 400;">404: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UNAUTHORIZED_ACCESS</span></p>
<p><span style="font-weight: 400;">401: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INVALID_CHANNEL</span></p>
<p><span style="font-weight: 400;">402: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INVALID_MOBILE</span></p>
<p><span style="font-weight: 400;">432: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BLOCKED_MOBILE</span></p>
<p><span style="font-weight: 400;">433: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ALREADY_VERIFIED</span></p>
<p><span style="font-weight: 400;">400: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TRANSACTION_ERROR</span></p>
<p><span style="font-weight: 400;">434: &nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">NOT_FOUND</span></p>
<p><span style="font-weight: 400;">415: &nbsp;&nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">EXPIRED_OTP</span></p>
<p><span style="font-weight: 400;">416: &nbsp;&nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">LIMIT_EXCEEDED</span></p>
<p><span style="font-weight: 400;">414: &nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">WRONG_OTP</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 835px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>Description</strong></p>
</td>
<td style="width: 689px;">
<p><span style="font-weight: 400;">This API is used to get an OTP for add &nbsp;an email.</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 689px;">
<p><span style="font-weight: 400;">Add Alternate Email</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 689px;">
<p><span style="font-weight: 400;">-(void)</span><strong>addAlternateEmail</strong><span style="font-weight: 400;">:(NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 689px;">
<p><span style="font-weight: 400;">4000: &nbsp;</span>&nbsp;<span style="font-weight: 400;">SDK_NOT_INITIALIZED</span></p>
<p><span style="font-weight: 400;">4001: &nbsp;</span>&nbsp;<span style="font-weight: 400;">NO_INTERNET_CONNECTION</span></p>
<p><span style="font-weight: 400;">4002:&nbsp;</span><span style="font-weight: 400;">REQUEST_FAILED</span></p>
<p><span style="font-weight: 400;">4003: &nbsp;</span>&nbsp;<span style="font-weight: 400;">NETWORK_ERROR &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
<p><span style="font-weight: 400;">413: &nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">INVALID_REQUEST</span></p>
<p><span style="font-weight: 400;">404: &nbsp;&nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">UNAUTHORIZED_ACCESS</span></p>
<p><span style="font-weight: 400;">401:&nbsp;</span><span style="font-weight: 400;">&nbsp;&nbsp;INVALID_CHANNEL</span></p>
<p><span style="font-weight: 400;">403: &nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">INVALID_EMAIL</span></p>
<p><span style="font-weight: 400;">435: &nbsp;&nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">ADD_EMAIL_MAX_LIMIT_EXCEEDED</span></p>
<p><span style="font-weight: 400;">433: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ALREADY_VERIFIED</span></p>
<p><span style="font-weight: 400;">400: &nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">TRANSACTION_ERROR</span>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 834px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 688px;">
<p><span style="font-weight: 400;">Verify Alternate Email</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 688px;">
<p><span style="font-weight: 400;">-(void)</span><strong>verifyAddAlternateEmailOtp</strong><span style="font-weight: 400;">:(NSString *)otp</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;forEmail:(NSString *)email</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure ;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 688px;">
<p><span style="font-weight: 400;">4000:</span>&nbsp;<span style="font-weight: 400;">SDK_NOT_INITIALIZED</span></p>
<p><span style="font-weight: 400;">4001:</span>&nbsp;<span style="font-weight: 400;">NO_INTERNET_CONNECTION</span></p>
<p><span style="font-weight: 400;">4002:&nbsp;</span><span style="font-weight: 400;">REQUEST_FAILED</span></p>
<p><span style="font-weight: 400;">4003:</span>&nbsp;<span style="font-weight: 400;">NETWORK_ERROR &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
<p><span style="font-weight: 400;">413: &nbsp;</span>&nbsp;<span style="font-weight: 400;">INVALID_REQUEST</span></p>
<p><span style="font-weight: 400;">404: &nbsp;</span>&nbsp;<span style="font-weight: 400;">UNAUTHORIZED_ACCESS</span></p>
<p><span style="font-weight: 400;">401: &nbsp;</span>&nbsp;<span style="font-weight: 400;">INVALID_CHANNEL</span></p>
<p><span style="font-weight: 400;">403: &nbsp;</span>&nbsp;<span style="font-weight: 400;">INVALID_EMAIL</span></p>
<p><span style="font-weight: 400;">435:&nbsp;</span><span style="font-weight: 400;">ADD_EMAIL_MAX_LIMIT_EXCEEDED</span></p>
<p><span style="font-weight: 400;">433: &nbsp;</span>&nbsp;<span style="font-weight: 400;">ALREADY_VERIFIED</span></p>
<p><span style="font-weight: 400;">400: &nbsp;&nbsp;&nbsp;&nbsp;TRANSACTION_ERROR</span></p>
<p><span style="font-weight: 400;">415: &nbsp;</span>&nbsp;<span style="font-weight: 400;">EXPIRED_OTP</span></p>
<p><span style="font-weight: 400;">416: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LIMIT_EXCEEDED</span></p>
<p><span style="font-weight: 400;">414:&nbsp;</span><span style="font-weight: 400;">WRONG_OTP</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 832px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>Description</strong></p>
</td>
<td style="width: 686px;">
<p><span style="font-weight: 400;">This API is used to renew Ticket.</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 686px;">
<p><span style="font-weight: 400;">renewTicket</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 686px;">
<p><span style="font-weight: 400;">-(void )</span><strong>renewTicket</strong><span style="font-weight: 400;">:(void(^)(void))success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 686px;">
<p><span style="font-weight: 400;">4000: &nbsp;</span>&nbsp;<span style="font-weight: 400;">SDK_NOT_INITIALIZED</span></p>
<p><span style="font-weight: 400;">4001: &nbsp;</span>&nbsp;<span style="font-weight: 400;">NO_INTERNET_CONNECTION</span></p>
<p><span style="font-weight: 400;">4003: &nbsp;</span>&nbsp;<span style="font-weight: 400;">NETWORK_ERROR &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
<p><span style="font-weight: 400;">413: &nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">INVALID_REQUEST</span></p>
<p><span style="font-weight: 400;">404: &nbsp;&nbsp;&nbsp;</span>&nbsp;<span style="font-weight: 400;">UNAUTHORIZED_ACCESS</span></p>
<p><span style="font-weight: 400;">401:&nbsp;</span><span style="font-weight: 400;">&nbsp;&nbsp;INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 829px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 683px;">
<p><span style="font-weight: 400;">IMPORT &nbsp;PROFILE PIC FROM SOCIAL</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 683px;">
<p><span style="font-weight: 400;">-(void)</span><strong>uploadProfilePicFromSocialUsingInfo</strong><span style="font-weight: 400;">: (NSDictionary *)info</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 683px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4100 : DATA_NIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4104 : OAUTH_ID_NOT_FOUND</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4105 : OAUTH_SITE_ID_NOT_FOUND</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4106 : ACCESS_TOKEN_NOT_FOUND</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 683px;">
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">-(void)</span><strong>performSocialActivity</strong><span style="font-weight: 400;">:(SSOSocialActivityOptions)option</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usingSocialInfo:(SSOSocialInfo * _Nullable)info</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 829px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 683px;">
<p><span style="font-weight: 400;">UPLOAD PROFILE PIC</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 683px;">
<p><span style="font-weight: 400;">-(void)</span><strong>openPhotoSelectorOnViewController</strong><span style="font-weight: 400;">: (UIViewController *)vc</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>success</strong><span style="font-weight: 400;">: (voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong>failure</strong><span style="font-weight: 400;">: (errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 683px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 683px;">
<p><strong>Warning</strong><span style="font-weight: 400;">&nbsp;:&nbsp;</span><strong>Deprecated</strong></p>
<p><span style="font-weight: 400;">New available method is &rarr;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">-(void)</span><strong>performPickUploadActivity</strong><span style="font-weight: 400;">:(SSOPickUploadOptions)options</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;onController:(UIViewController *)vc</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;startRequest:(imageUploadStart) uploadStart</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(successBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
<p><span style="font-weight: 400;">Note : SSOCamera, SSOPhotoGallery, SSODefault are different SSOPickUploadOptions.</span></p>
</td>
</tr>
</tbody>
</table>
<p style="text-align: center;"><strong>New Api&rsquo;s 2.2</strong></p>
<table style="height: 743px; margin-left: auto; margin-right: auto;" width="828">
<tbody>
<tr>
<td style="width: 134px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 678px;">
<p><span style="font-weight: 400;">SOCIAL LOGIN/LINK/DLINK/SOCIALPICUPLOAD</span></p>
</td>
</tr>
<tr>
<td style="width: 134px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 678px;">
<p><span style="font-weight: 400;">-(void)</span><strong>performSocialActivity</strong><span style="font-weight: 400;">:(SSOSocialActivityOptions)option</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usingSocialInfo:(SSOSocialInfo *)info</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 134px;"><br />
<p><strong>Possible Error Codes:</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 678px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4100 : DATA_NIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4104 : OAUTH_ID_NOT_FOUND</span></p>
<p><span style="font-weight: 400;">4105 : OAUTH_SITE_ID_NOT_FOUND</span></p>
<p><span style="font-weight: 400;">4106 : ACCESS_TOKEN_NOT_FOUND</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
<tr>
<td style="width: 134px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 678px;">
<p><span style="font-weight: 400;">Note:</span><strong><br /></strong><span style="font-weight: 400;">SSOFacebookLogin, SSOGoogleLogin,SSOTruecallerLogin, &nbsp;&nbsp;&nbsp;SSOFacebookLink,SSOGoogleLink, SSOFacebookPicUpload ,</span></p>
<p><span style="font-weight: 400;">SSOGooglePicUpload , &nbsp;&nbsp;SSOFacebookDelink, SSOGoogleDelink are various SSOSocialActivityOptions.</span></p>
<p><span style="font-weight: 400;">For login using social info first get get SocialInfo (oauthId, accessToken) and set it to &ldquo;info&rdquo; object</span></p>
<p><span style="font-weight: 400;">e.g.</span></p>
<p><span style="font-weight: 400;">{</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;accessToken = EAAJs0MF8KTcBALGCa3rXm65aeySndxlTuJjs5P4eFiC1kh77xqpgVZA6MEmUrZAySf4oZAzqKuSLY9oi2h</span></p>
<p><span style="font-weight: 400;">NRItJUf8Q5KLGleCc</span><span style="font-weight: 400;">WZB5EkxWOefbZCXQ5DJQJw4prSFlNpENzoQgMq9eYG4Wcucn1yWL9mIxRYFXzq47B8ZBsw29tHWlo</span></p>
<p><span style="font-weight: 400;">KxWnIWpsXctLZARHw4J5rjH4NSAbTM0</span></p>
<p><span style="font-weight: 400;">RtamUt0XO1d77DZAie9zmp9SNFY7hsAZDZD;</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;oauthId = 785865238234666</span></p>
<p><span style="font-weight: 400;">}</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 824px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 678px;">
<p><span style="font-weight: 400;">UPDATE USER</span>&nbsp;<span style="font-weight: 400;">DETAILS</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:</strong></p>
</td>
<td style="width: 678px;">
<p><span style="font-weight: 400;">-(void)updateUserDetails:(SSOUserUpdates *)userDetails</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(userUpdatesBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 678px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 678px;">
<p><strong>Note:</strong><strong><br /></strong><span style="font-weight: 400;">Set user firstName, lastName, dob, gender, city properties of&nbsp;</span><span style="font-weight: 400;">userDetails object if provided.</span></p>
<p><span style="font-weight: 400;">V1.1.1: &nbsp;termsAccepted and ShareDataAllowed propertied added &nbsp;in SSOUserUpdates&nbsp;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td>
<p><strong>API Name</strong></p>
</td>
<td>
<p><span style="font-weight: 400;">REGISTER USER</span></p>
</td>
</tr>
<tr>
<td>
<p><strong>API Signature:</strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td>
<p><span style="font-weight: 400;">-(void)performSignupActivity:(SSOSignupOptions)options</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;forUser:(SSOSignupUser *)user</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(voidBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td>
<p><strong>Possible Error Codes:</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td>
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">420 : INVALID_NAME</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">421 : INVALID_GENDER</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">403 : INVALID_EMAIL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">402 : INVALID_MOBILE</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">417 : INVALID_PASSWORD</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">429: ALREADY_REGISTERED_USER</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
<tr>
<td>
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
<br /><br /></td>
<td>
<p><span style="font-weight: 400;">User can provide either mobile or email or both. After SignUp Call, User willl get an OTP on mobile (if mobile is blank OTP</span></p>
<p><span style="font-weight: 400;">will be send on email) and then call verifySignUpUser to verify this OTP.</span></p>
<p><span style="font-weight: 400;">Note:</span></p>
<p><span style="font-weight: 400;">SSOFullSignup, SSOOnlyMobileSignup are the two&nbsp;</span><span style="font-weight: 400;">SSOSignupOptions. Set user object properties which are required</span></p>
<p><span style="font-weight: 400;">Required User Properties : name,email/moble, gender , password</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">Optional User Properties : 1 of email or mobile</span></p>
<p><span style="font-weight: 400;">V1.1.1: &nbsp;termsAccepted and ShareDataAllowed propertied added &nbsp;in SSOUserUpdates</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 822px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 676px;">
<p><span style="font-weight: 400;">UPLOAD PROFILE PIC</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /></strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 676px;">
<p><span style="font-weight: 400;">-(void)</span><strong>performPickUploadActivity</strong><span style="font-weight: 400;">:(SSOPickUploadOptions)options</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;onController:(UIViewController *)vc</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;startRequest:(imageUploadStart) uploadStart</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:(successBlock)success</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;failure:(errorBlock)failure;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 676px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">413 : INVALID_REQUEST</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 676px;">
<p><span style="font-weight: 400;">Note :</span></p>
<p><span style="font-weight: 400;">SSOCamera, SSOPhotoGallery, SSODefault are different SSOPickUploadOptions.</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 820px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 674px;">
<p><span style="font-weight: 400;">CREATE APP SESSION</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 674px;">
<p><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)&nbsp;</span><strong>createAppSessionForTicketId</strong><span style="font-weight: 400;">:(NSString *)ticketId completion:(completionBlock)completion;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 674px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4101 : Field is not string&nbsp;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 674px;">
<p><span style="font-weight: 400;">This API is for unverified user but can also be used in place of migrate session.</span></p>
<p><span style="font-weight: 400;">Sending blank or NULL ticket id assume no session is available.</span>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 819px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 673px;">
<p><span style="font-weight: 400;">GET GLOBAL SESSION</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 673px;">
<p><span style="font-weight: 400;">-(void)</span><strong>getGlobalSessionWithUserDataEnabled</strong><span style="font-weight: 400;">:(Boolean)userDataEnabled</span></p>
<p><span style="font-weight: 400;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;completion:(sessionBlock)completion;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 673px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">4103 : SESSION_NOT_FOUND</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Special Instruction</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 673px;">
<p><span style="font-weight: 400;">If UserDataEnabled is set to True , response will contains basic user details along with Global session.</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 813px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 667px;">
<p><span style="font-weight: 400;">GET USER DETAILS</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 667px;">
<p><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)</span><strong>getUserDetailsOnCompletion</strong><span style="font-weight: 400;">:(</span><span style="font-weight: 400;">userDetailsBlock</span><span style="font-weight: 400;">)completion;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 667px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">401 : INVALID_CHANNEL</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">404 : UNAUTHORIZED_ACCESS</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 667px;">
<p><strong>Note:</strong><strong><br /></strong><span style="font-weight: 400;">It return user object of &lt;&nbsp;</span><span style="font-weight: 400;">SSOUserStatus &gt;</span>&nbsp;<span style="font-weight: 400;">type</span><span style="font-weight: 400;">.</span><span style="font-weight: 400;"><br /></span><span style="font-weight: 400;">V1.1.1: &nbsp;termsAccepted and ShareDataAllowed also will be returned SSOUserDetails.</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td>
<p><strong>API Name</strong></p>
</td>
<td>
<p><span style="font-weight: 400;">GET USER DETAILS LOCAL</span></p>
</td>
</tr>
<tr>
<td>
<p><strong>API Signature:&nbsp;</strong><strong><br /><br /></strong></p>
</td>
<td>
<p><em><span style="font-weight: 400;">-(</span></em><em><span style="font-weight: 400;">SSOUserDetails</span></em><em><span style="font-weight: 400;">&nbsp;*)getUserDetailsLocal;</span></em></p>
</td>
</tr>
<tr>
<td>
<p><strong>Possible Error Codes:</strong></p>
</td>
<td>
<p><span style="font-weight: 400;">NA</span></p>
</td>
</tr>
<tr>
<td>
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td>
<p><span style="font-weight: 400;">Above method makes no server call, it fetches user data from device's keychains if available and returns.</span></p>
<p><span style="font-weight: 400;">To use this functionality client needs to call &nbsp;</span><strong><em>getUserDetailsOnCompletion:_</em></strong><span style="font-weight: 400;">&nbsp;(which makes server call) one time just&nbsp;</span></p>
<p><span style="font-weight: 400;">after login/signup. After any update on user's profile/details local user details is automatically updated</span></p>
<p><span style="font-weight: 400;">(no need to call&nbsp;</span><em><span style="font-weight: 400;">getUserDetailsOnCompletion:_</span></em><span style="font-weight: 400;">&nbsp;).</span></p>
<p><span style="font-weight: 400;">V1.1.1: &nbsp;termsAccepted and ShareDataAllowed also will be returned user details</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 807px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 663px;">
<p><span style="font-weight: 400;">GET APP SESSION</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 663px;">
<p><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)</span><strong>getSSOAppSessionOnCompletion</strong><span style="font-weight: 400;">:(</span><span style="font-weight: 400;">sessionBlock</span><span style="font-weight: 400;">)completion;</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 663px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED</span></p>
</td>
</tr>
<tr>
<td style="width: 132px;"><br />
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 663px;">
<p><span style="font-weight: 400;">if&nbsp;</span><strong>type</strong><span style="font-weight: 400;">&nbsp;is empty, this is new app login</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<table style="width: 803px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132.5px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 661.5px;">
<p><span style="font-weight: 400;">LOGIN WITH GDPR DETAILS</span></p>
</td>
</tr>
<tr>
<td style="width: 132.5px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 661.5px;">
<p><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)</span><strong>loginWithGdprDetails</strong><span style="font-weight: 400;">:</span><span style="font-weight: 400;">(GdprDetails *)gdprDetails</span><span style="font-weight: 400;">;</span></p>
</td>
</tr>
<tr>
<td style="width: 132.5px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 661.5px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED&nbsp;</span></p>
<p><span style="font-weight: 400;">413 : INVALID_REQUEST</span></p>
</td>
</tr>
<tr>
<td style="width: 132.5px;"><br />
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 661.5px;">
<p><span style="font-weight: 400;">Can be used when user hasn't accepted Gdpr terms.&nbsp;</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<table style="width: 803px; margin-left: auto; margin-right: auto;">
<tbody>
<tr>
<td style="width: 132.5px;">
<p><strong>API Name</strong></p>
</td>
<td style="width: 661.5px;">
<p><span style="font-weight: 400;">BLOCK USER</span></p>
</td>
</tr>
<tr>
<td style="width: 132.5px;">
<p><strong>API Signature:&nbsp;</strong><strong><br /><br /></strong></p>
</td>
<td style="width: 661.5px;"><br />
<p><span style="font-weight: 400;">-(</span><span style="font-weight: 400;">void</span><span style="font-weight: 400;">)</span><span style="font-weight: 400;"><strong>blockUser</strong></span><span style="font-weight: 400;">:</span>(voidBlock)success&nbsp;<strong>failure</strong>: (errorBlock)failure</p>
</td>
</tr>
<tr>
<td style="width: 132.5px;">
<p><strong>Possible Error Codes:</strong></p>
</td>
<td style="width: 661.5px;">
<p><span style="font-weight: 400;">4000</span><strong>&nbsp;:</strong><span style="font-weight: 400;">&nbsp;SDK_NOT_INITIALIZED&nbsp;</span></p>
<p><span style="font-weight: 400;">413 : INVALID_REQUEST</span></p>
<p><span style="font-weight: 400;">401 : INVALID CHANNEL</span></p>
<p><span style="font-weight: 400;">400 : TRANSACTION_ERROR</span></p>
</td>
</tr>
<tr>
<td style="width: 132.5px;"><br />
<p><strong>Special Instruction</strong><strong><br /></strong><strong><br /><br /></strong></p>
</td>
<td style="width: 661.5px;">
<p><span style="font-weight: 400;">Will block the user for the channel.</span><span style="font-weight: 400;"><br /></span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p style="padding-left: 30px;"><span style="font-weight: 400;"><br />NSSOCrossAppLoginManager&nbsp;</span><span style="font-weight: 400;">is a&nbsp;</span><strong>Singleton</strong><span style="font-weight: 400;">&nbsp;class. Only one instance will be created no matter whether you are instantiating it using &ndash;()</span><em><span style="font-weight: 400;">init method</span></em><span style="font-weight: 400;">&nbsp;or +()</span><em><span style="font-weight: 400;">sharedLoginManager</span></em>&nbsp;<em><span style="font-weight: 400;">class method</span></em><span style="font-weight: 400;">.</span><br /><span style="font-weight: 400;">NSSOCrossAppLoginManager</span><span style="font-weight: 400;">&nbsp;*manager = [</span><span style="font-weight: 400;">NSSOCrossAppLoginManager</span>&nbsp;<span style="font-weight: 400;">sharedLoginManager</span><span style="font-weight: 400;">];&nbsp;</span><br /><br /></p>
<p><strong>Notes</strong><span style="font-weight: 400;">:</span></p>
<ul>
<li><span style="font-weight: 400;">SSO Cross App Login will work only if you run the App for the Team which team ID you have mentioned in Application delegate.</span></li>
<li><span style="font-weight: 400;">If your deployment target is 7, include Security.framework (with status: required) and CoreFoundation.framework(with status: optional)</span></li>
<li><strong><strong>At the time of production, developer team id must be replaced with Production team id in appDelegate.</strong></strong></li>
</ul>
<p>&nbsp;</p>
<p><strong><strong>FAQ</strong></strong>&nbsp;</p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Q: What is the minimum version supported by SSO for android and IOS</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">A: for Android version 4.1 and for IOS version 7</span></p>
<p style="padding-left: 30px;">&nbsp;</p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Q: &nbsp;How this new version of SSO is useful for all the business?</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">A: &nbsp;It is useful as user can manage his account via single app and it will be reflected in the other apps. User will be auto login at the time of installation of app so app can have more logged in users.</span></p>
<p style="padding-left: 30px;">&nbsp;</p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Q: Will my user data is consistent across the network?</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">A: &nbsp;Yes, User&rsquo;s basic profile will remain same over the network as it is stored in SSO only,</span></p>
<p style="padding-left: 30px;">&nbsp;</p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Q: &nbsp;Does SSO support user session across app?</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">A: &nbsp;Yes, SSO supports cross app login.</span></p>
<p style="padding-left: 30px;">&nbsp;</p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">Q: &nbsp;</span><span style="font-weight: 400;">Can I use non Gmail account from cross app login</span><span style="font-weight: 400;">?</span></p>
<p style="padding-left: 30px;"><span style="font-weight: 400;">A: &nbsp;Yes. User can logout and login with desired email.</span></p>
<p>&nbsp;</p>
<p><span style="font-weight: 400;">Thank you!</span></p>
<h2 id="markdown-header-author">Author</h2>
<p>Pankaj Verma, pankaj.verma@timesinternet.in</p>
<h2 id="markdown-header-license">License</h2>
<p>NativeSSOLogin is available under the MIT license. See the LICENSE file for more info.</p>
<p>&nbsp;</p>
