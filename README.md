# reebok

[![CI Status](http://img.shields.io/travis/pankaj verma/reebok.svg?style=flat)](https://travis-ci.org/pankaj verma/reebok)
[![Version](https://img.shields.io/cocoapods/v/reebok.svg?style=flat)](http://cocoapods.org/pods/reebok)
[![License](https://img.shields.io/cocoapods/l/reebok.svg?style=flat)](http://cocoapods.org/pods/reebok)
[![Platform](https://img.shields.io/cocoapods/p/reebok.svg?style=flat)](http://cocoapods.org/pods/reebok)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

reebok is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "reebok"
```
<p><strong> &nbsp;</strong></p>
<p><strong>Cross App Native SSO Integration</strong></p>
<p><br /><br /><br /></p>
<p><strong>Documents versions</strong><span style="font-weight: 400;">:</span></p>
<p>&nbsp;</p>
<table>
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
<p><span style="font-weight: 400;">Cross app Native SSO Integration_1.0.doc</span></p>
</td>
<td>
<p><span style="font-weight: 400;">2.2</span></p>
</td>
<td>
<p><span style="font-weight: 400;">20-03-2017</span></p>
</td>
<td>
<p><span style="font-weight: 400;">&nbsp;Initial version of cross app SSO Integration </span></p>
</td>
<td>
<p><span style="font-weight: 400;">Amit Chouhan</span></p>
<p><span style="font-weight: 400;">Pankaj Verma</span></p>
</td>
<td>
<p><span style="font-weight: 400;">Amit Chouhan</span></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><span style="font-weight: 400;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #ff0000;"><strong>Table of Contents</strong>&nbsp;</span></p>
<p><span style="font-weight: 400;">1.0</span> <span style="font-weight: 400;">Introduction</span> <a href="https://docs.google.com/document/d/1YburGzM8dMZKvQaDM3aKHBC44gnCwtxEi1lZBEnMDUI/edit#heading=h.gjdgxs"><span style="font-weight: 400;">4</span></a></p>
<p><span style="font-weight: 400;">1.1</span> <span style="font-weight: 400;">User Profile Handling</span> <a href="https://docs.google.com/document/d/1YburGzM8dMZKvQaDM3aKHBC44gnCwtxEi1lZBEnMDUI/edit#heading=h.3dy6vkm"><span style="font-weight: 400;">4</span></a></p>
<p><span style="font-weight: 400;">1.2</span> <span style="font-weight: 400;">Local and Global login sessions</span> <a href="https://docs.google.com/document/d/1YburGzM8dMZKvQaDM3aKHBC44gnCwtxEi1lZBEnMDUI/edit#heading=h.3dy6vkm"><span style="font-weight: 400;">4</span></a></p>
<p><span style="font-weight: 400;">2.0</span> <span style="font-weight: 400;">Prerequisites to use Cross app SSO</span> <a href="https://docs.google.com/document/d/1YburGzM8dMZKvQaDM3aKHBC44gnCwtxEi1lZBEnMDUI/edit#heading=h.3znysh7"><span style="font-weight: 400;">6</span></a></p>
<p><span style="font-weight: 400;">3.0</span> <span style="font-weight: 400;">SSO Plug-in available for different Platforms</span> <a href="https://docs.google.com/document/d/1YburGzM8dMZKvQaDM3aKHBC44gnCwtxEi1lZBEnMDUI/edit#heading=h.2et92p0"><span style="font-weight: 400;">8</span></a></p>
<p><span style="font-weight: 400;">3.1</span> <span style="font-weight: 400;">iOS</span><span style="font-weight: 400;"> Installation:</span> <a href="https://docs.google.com/document/d/1YburGzM8dMZKvQaDM3aKHBC44gnCwtxEi1lZBEnMDUI/edit#heading=h.1t3h5sf"><span style="font-weight: 400;">8</span></a></p>
<p><span style="font-weight: 400;">4.0</span> <span style="font-weight: 400;">FAQ</span> <a href="https://docs.google.com/document/d/1YburGzM8dMZKvQaDM3aKHBC44gnCwtxEi1lZBEnMDUI/edit#heading=h.tyjcwt"><span style="font-weight: 400;">10</span></a><span style="font-weight: 400;"></span></p>
<p><br /><br /></p>
<p><span style="font-weight: 400;"></span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<ul>
<li>
<h1><span style="color: #008000;"><strong><strong>Introduction</strong></strong></span></h1>
</li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><span style="font-weight: 400;">Cross app Native SSO Integration is an authentication system that permits a user to login with email/ mobile and password/OTP on a single app and get auto login on across the Times network with cross app SSO integration.</span></p>
<p><span style="font-weight: 400;">SSO - Single Sign On centrally manages the authentication of users across the Times network. SSO handles both the sub domain and cross domain login.</span></p>
<p><span style="font-weight: 400;">It allows users to connect over cross domain sites without using their credentials.</span></p>
<p><span style="font-weight: 400;">For registration/login, at least one of email address or mobile is required. It is possible for a SSO user to have only email and no mobile, or vice versa or both. If the user has both email and mobile in his profile, he will be able to login using either of them as the identifier. </span></p>
<p>&nbsp;</p>
## Author

pankaj verma, pankaj.verma@timesinternet.in

## License

reebok is available under the MIT license. See the LICENSE file for more info.
