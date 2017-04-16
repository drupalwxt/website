+++
draft = true
title = "Embedding Youtube Videos"
description="Tips to embedding Youtube Videos"
language = "en"
tags = [
    "post",
    "wxt",
]
date = "2015-01-13T13:10:52-05:00"
+++

# Embedding Youtube Videos  

Whenever you embed a youtube video the HMTL code should be updated to satisfy GoC requirements for W3C and WCAG compliance.

1.	[validator.w3.org][validator] error = The frameborder attribute on the iframe element is obsolete.   
  *	Solution is to always delete the code ... frameborder="0"   

2.	CSE validator error = The "iframe" element requires the "title" attribute to label the frame, describe the contents, and facilitate frame identification so users can determine which frame to enter. Frame titles must be meaningful. For example, "Table of Contents", "Where the content is displayed", and "Sitewide navigation bar" (or simply "Navigation").   
  *	Solution is to add title="Something meaningful or descriptive” to the iframe code.  

<!-- Links Referenced -->

[validator]:       http://validator.w3.org
