# Information Security and Privacy

**Security** refers to protection from
 "unauthorized access, use, disclosure, disruption, modification, or destruction" of information resources ([Rainer 4.1](/README.md/#accompanying-textbook)).

**Privacy** is "the right to be left alone and to be free of unreasonable personal intrusion" ([Rainer 4.5](/README.md/#accompanying-textbook)).

Threats, or dangers, to information resource security and privacy
 generally include intentional or unintentional actions like
  hacks and attacks,
  hardware and software failures,
  natural disasters,
  and human mistakes and negligence.

To maximize information security and privacy, technology administrators must take proactive measures such as conducting periodic security audits and creating disaster recovery procedures.

Ultimately, information security and privacy practitioners rely on principles of risk management and mitigation, which involve the intentional assumption of a certain level and nature of risk.


## Controls


### Physical Controls

**Physical controls** "prevent unauthorized individuals from gaining access" ([Rainer 4.5](/README.md/#accompanying-textbook)), e.g. locks, walls, guards, alarm systems, login attempt limiting, etc.





### Access Controls

**Access controls** "restrict unauthorized individuals' (access to and) use of information resources ([Rainer 4.5](/README.md/#accompanying-textbook)).

#### Authentication

**Authentication** is "a process which determines the identity of the person requesting access" ([Rainer 4.5](/README.md/#accompanying-textbook)).

Multi-Factor Authentication (MFA), or two-step authentication, is
 "a simple best practice that adds an extra layer of protection on top of your user name and password. With MFA enabled, when a user signs in ..., they will be prompted for their user name and password (the first factor—what they know), as well as for an authentication code from their ... MFA device (the second factor—what they have). Taken together, these multiple factors provide increased security... ([Amazon](https://aws.amazon.com/iam/details/mfa/)).




#### Authorization

**Authorization** "determines (the permissable) actions, rights, or privileges (of an individual who has verified his/her) identity" ([Rainer 4.5](/README.md/#accompanying-textbook)).

The **Principle of Least Privilege** calls for granting a privilege to an individual only if the individual's need is justified. In other words, start from a situation in which no one has any privileges, and add them one-by-one as necessary. Contrast this against an open permission structure by which everyone starts with all privileges and they are revoked one-by-one as necessary.

Role-based Permissions





### Communications Controls

#### Firewalls

A **firewall** "prevents unauthorized users from accessing private networks ... or certain parts of private networks" ([Rainer 4.5](/README.md/#accompanying-textbook)).

#### Encryption

Public Key Encryption

Certificate Authorities

End-to-end Encryption - SSL/TLS

<hr>

Additional Resources:

 + https://en.wikipedia.org/wiki/Threat_(computer)
 + http://www.techrepublic.com/blog/it-security/understanding-risk-threat-and-vulnerability/

Notable and Recent Hacks in the News:

 + http://www.informationisbeautiful.net/visualizations/worlds-biggest-data-breaches-hacks/
 + https://en.wikipedia.org/wiki/Data_breach#Major_incidents
 + https://en.wikipedia.org/wiki/Ashley_Madison_data_breach
 + https://en.wikipedia.org/wiki/Office_of_Personnel_Management_data_breach
 + https://en.wikipedia.org/wiki/Sony_Pictures_Entertainment_hack
 + https://en.wikipedia.org/wiki/Sarah_Palin_email_hack

Protect your accounts with MFA:

 + https://support.google.com/accounts/answer/1066447?hl=en
 + https://aws.amazon.com/iam/details/mfa/
