Role.create!([
  {name: "admin"},
  {name: "user"},
  {name: "org_admin"}
])
# uses encrypted password.  See passwrod safe!
admin = User.new(
  {firstname: "DMP", surname: "Administrator", email: "dittest@ualberta.ca", 
   password: "password", password_confirmation: "password"}
)
admin.encrypted_password = "$2a$10$q7XUQxvbFb1QcYhrngqcd..sM8.DsviZUxUBwDpC7ZmuohHrkOeZm"
admin.add_role(:admin)
admin.skip_confirmation!
admin.save!
OrganisationType.create!([
  {name: "Organization", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"},
  {name: "Funder", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"},
  {name: "Project", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"},
  {name: "School", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"},
  {name: "Institution", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt"}
])
ualberta = Organisation.create!(
  {name: "University of Alberta", abbreviation: "UAlberta", description: "", target_url: "", logo_file_id: nil, banner_file_id: nil, organisation_type_id:  OrganisationType.find_by_name("Institution").id, domain: "ualberta.ca", wayfless_entity: nil, stylesheet_file_id: nil, parent_id: nil, sort_name: "University of Alberta"}
)
UserStatus.create!([
  {name: "Active", description: ""},
  {name: "Archived", description: ""}
])
Theme.create!([
  {title: "Related Policies", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Licensing of Existing Data", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Responsibilities", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Discovery by Users", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Preservation Plan", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Resourcing: Hardware and Software", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Period of Preservation", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Security", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Method For Data Sharing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Active Data Storage", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Capture Methods", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Existing Data", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Restrictions on Sharing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Repository", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Timeframe For Data Sharing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Expected Reuse", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Description of Data Content", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Resourcing: Preservation and Data Sharing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Quality", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Selection", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Metadata Capture", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Relationship to Existing Data", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Volumes", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "IPR Ownership and Licencing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Embargo Period", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Managed Access Procedures", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Ethical Issues", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Organisation", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Metadata Standards", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Documentation", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Backup Procedures", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Resourcing: Skills and Training", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Type", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Audience", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", locale: "en"},
  {title: "Data Format", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", locale: "en"}
])
UserType.create!([
  {name: "Developer", description: ""},
  {name: "Project Manager", description: ""},
  {name: "Archivist", description: ""},
  {name: "Librarian", description: ""}
])
UserOrgRole.create!([
  {user_id: 5, organisation_id: ualberta.id, user_role_type_id: nil}
])
dmptemplate = Dmptemplate.create!(
  {title: "University of Alberta Template", description: "This is the generic DMP template for University of Alberta.", published: true, organisation_id: ualberta.id, locale: nil, is_default: true}
)
phase = Phase.create!(
  {title: "University of Alberta Data Management Questions", description: "", number: 1, dmptemplate_id: dmptemplate.id, external_guidance_url: nil}
)
version = Version.create!(
  {title: "University of Alberta Version 1", description: "", published: true, number: 1, phase_id: phase.id}
)
QuestionFormat.create!([
  {title: "Text area", description: ""},
  {title: "Text field", description: ""},
  {title: "Radio buttons", description: ""},
  {title: "Check box", description: ""},
  {title: "Dropdown", description: ""},
  {title: "Multi select box", description: ""}
])
Section.create!([
  {title: "Data Collection", description: "", number: 1, version_id: version.id, organisation_id: ualberta.id},
  {title: "Documentation and Metadata", description: "", number: 2, version_id: version.id, organisation_id: ualberta.id},
  {title: "Storage and Backup", description: "", number: 3, version_id: version.id, organisation_id: ualberta.id},
  {title: "Preservation", description: "", number: 4, version_id: version.id, organisation_id: ualberta.id},
  {title: "Data Sharing and Reuse", description: "", number: 5, version_id: version.id, organisation_id: ualberta.id},
  {title: "Responsibilities and Resources", description: "", number: 6, version_id: version.id, organisation_id: ualberta.id}
])
Question.create!([
  {text: "What types of data will you collect, create, acquire and/or record?", question_type: nil, default_value: "", guidance: "Examples: Images, audio, video, text, tabular data, modeling data, spatial data, instrumentation data", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 1, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "Are there are any existing data that you can re-use?  If so, please explain how you will obtain that data and integrate it into your research project.", question_type: nil, default_value: "", guidance: "<p>There may be existing data that you can license or purchase for re-use.  <a href=\"http://databib.org/\" target=\"_blank\">Databib</a> and <a href=\"http://www.re3data.org/\" target=\"_blank\">re3data</a> are directories of disciplinary data repositories you can check for data.   You can also contact the <a href=\"http://www.library.ualberta.ca/aboutus/hss/data/\" target=\"_blank\">U of A Data Library</a> for help with finding and re-using existing data</p>", number: 5, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 1, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "What file formats will your data be collected in?  Will these formats allow for data re-use, sharing and long-term access to the data?", question_type: nil, default_value: "", guidance: "<p>Proprietary file formats which require specialized software or hardware to use are not recommended, but may be necessary for certain data collection or analysis methods.  Using open file formats or industry-standard formats (e.g. those which are widely used by a given community) is preferred whenever possible.  </p>\r\n<p>Read more about file formats on the <a href=\"http://data-archive.ac.uk/create-manage/format/formats\" target=\"_blank\">UK Data Archive website</a>.</p>", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 1, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "What documentation will be needed for the data to be read and interpreted correctly in the future?  This includes study-level documentation, data-level description, and any other contextual information required to make the data usable by other researchers.", question_type: nil, default_value: "", guidance: "<p>Your documentation may include study-level information about:</p>\r\n<ul>\r\n<li>who created/collected the data</li>\r\n<li>when it was created</li>\r\n<li>any relevant study documents</li>\r\n<li>conditions of use</li>\r\n<li>contextual details about data collection methods and procedural documentation about how data files are stored, structured, and modified.  </li>\r\n</ul>\r\n<p>A complete description of the data files may include:</p>\r\n<ul>\r\n<li>naming and labelling conventions</li>\r\n<li>explanations of codes and variables</li>\r\n<li>any information or files require to reproduce derived data.  </li>\r\n</ul>\r\n<p>More information about data documentation is available at the <a href=\"http://www.data-archive.ac.uk/create-manage/document\" target=\"_blank\">UK Data Archive</a></p>", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 2, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "Please list the metadata standard and tools you will use to document and describe your data.  If there is not an appropriate standard, please explain how you will ensure consistency in your documentation.", question_type: nil, default_value: "", guidance: "<p>Metadata is a description of the contents and context of data files. Using a metadata standard (a set of required fields to fill out) helps ensure that your documentation is consistent, structured, and machine-readable, which is essential for depositing data in repositories and making it easily discoverable by search engines.</p>\r\n<p>There are general and discipline-specific <a href=\"http://www.dcc.ac.uk/resources/metadata-standards\" target=\"_blank\">metadata standards and tools</a> for research data.  For assistance with choosing a metadata standard, please contact <a href=\"mailto:data@ualberta.ca\">data@ualberta.ca</a>.</p>", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 2, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "How will you make sure that documentation is created or captured consistently throughout your project?", question_type: nil, default_value: "", guidance: "It is best to begin the documentation process at the start of a research project.  Details or procedures may be forgotten if documentation is created at the end of a project.  ", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 2, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "How will your data be stored and backed up during your research project?", question_type: nil, default_value: "", guidance: "<p>Storing data on flash drives, laptops, computers, or external hard drives without a regular backup procedure is not recommended, because they are subject to hardware failure, viruses, file corruption, theft, loss, and human error. Likewise, multiple copies of data stored in the same physical location does little to mitigate risk. </p>\r\n<p>Using software which automatically backs up your data and keeps it synchronized with a master copy is recommended. Copies of data should ideally be stored in separate physical locations to mitigate physical risks, e.g. fire.  More about data storage from <a href=\"http://data-archive.ac.uk/create-manage/storage.aspx\" target=\"_blank\">UK Data Archive</a>.</p>\r\n<p>Many universities offer networked file storage which is automatically backed up. University of Alberta researchers have access to networked storage and to commercial cloud storage (Google Drive) through <a href=\"http://ist.ualberta.ca/ts\" target=\"_blank\">Information Services and Technology</a>.\r\nUniversity of Alberta Libraries also offers <a href=\"https://dataverse.library.ualberta.ca/dvn/\" target=\"_blank\">Dataverse</a> for storing and sharing small datasets. For assistance with Dataverse, contact <a href=\"mailto:data@ualberta.ca\">data@ualberta.ca</a>. </p>", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 3, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "How will you ensure that sensitive data is stored securely and only accessible to the research team during the research project?", question_type: nil, default_value: "", guidance: "<p>The security measures you choose to implement will depend on the sensitivity of the data being stored.  Data can be protected by limiting physical access to hard drives and file servers on which it is stored, by storing data on computers that do not have external network access (i.e. access to the Internet), through password protection, and by encrypting data files.</p>\r\n<p>Sharing sensitive data via email and cloud storage services such as Dropbox is not recommended, since the security of these services cannot be trusted.  More about security from the <a href=\"http://data-archive.ac.uk/create-manage/storage/security\" target=\"_blank\">UK Data Archive</a>.</p>\r\n", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 3, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "Which data are selected for preservation and access will depend on potential reuse value, whether there are obligations to either retain or destroy data, and the resources required to properly curate the data and ensure that it remains usable in the future.  In some circumstances, it may be feasible to preserve all versions of the data (e.g. raw, processed, analyzed, final), but in others, it may be preferable to only keep only selected data (e.g. transcripts instead of audio interviews).\r\n", question_type: nil, default_value: "", guidance: "Which data are selected for preservation and access will depend on potential reuse value, whether there are obligations to either retain or destroy data, and the resources required to properly curate the data and ensure that it remains usable in the future.  In some circumstances, it may be feasible to preserve all versions of the data (e.g. raw, processed, analyzed, final), but in others, it may be preferable to only keep only selected data (e.g. transcripts instead of audio interviews).", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 4, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "At the end of your research project, where will you deposit your data for long-term preservation and access? ", question_type: nil, default_value: "", guidance: "<p>Please describe how you will identify a data repository or data center for your data.  <a href=\"http://databib.org/\" target=\"_blank\">Databib</a>  and <a href=\"http://www.re3data.org/\" target=\"_blank\">re3data.org</a> are directories of potential data repositories.  Note any details about the curation of the data and what aspects of the curation are your responsibility versus what the repository assumes. See if the data repository will provide a statement agreeing to these terms of deposit that can be included with your data management plan. </p>\r\n<p>Researchers at the University of Alberta can deposit smaller datasets (less than 500MB) in <a href=\"https://dataverse.library.ualberta.ca/dvn/\" target=\"_blank\">Dataverse</a> for complex data formats such as those produced by SPSS or SAS, or <a href=\"https://era.library.ualberta.ca/public/home\" target=\"_blank\">ERA</a> for basic data formats such as Excel.  For larger datasets, please contact <a href=\"mailto:data@ualberta.ca\">data@ualberta.ca</a>.  </p>\r\n", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 4, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "Please describe how you will prepare the data for preservation and access, including any necessary procedures for data cleaning, normalization or de-identification.  Explain how you will prevent data from being lost while processing and converting files. ", question_type: nil, default_value: "", guidance: "<p>It is likely that you will have multiple versions of your data (raw, processed, analyzed, final), and your data may be stored in different file formats depending on how they were collected and analyzed.</p>\r\n<p>Digital information may be lost while converting files from one format to another (e.g. converting an image from a non-compressed ‘lossless’ TIFF file to a compressed ‘lossy’ JPG file), so changes to file formats should be clearly documented.</p>\r\n<p>Identify what steps are needed after your project is completed in order to ensure the data you are choosing to preserve or share is anonymous, error-free, and converted to recommended formats with a minimal risk of data loss.</p>\r\n<p>Read more about <a href=\"http://data-archive.ac.uk/create-manage/format/formats\" target=\"_blank\">file formats</a> and <a href=\"http://data-archive.ac.uk/create-manage/consent-ethics/anonymisation\" target=\"_blank\">anonymization</a> on the UK Data Archive Website.</p>", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 4, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "What data will you be sharing and in what form? (e.g. raw, processed, analyzed, final). Consider which data may need to be shared in order to meet institutional or funding requirements, and which data may be restricted because of confidentiality/privacy issues. \r\n\r\n", question_type: nil, default_value: "", guidance: "", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 5, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "How will you be sharing your data? (e.g. institutional repository, a specialized data archive, project website, informal/on-request sharing).  Include a brief description of any resources needed to share your data (equipment, systems, expertise, etc.). \r\n", question_type: nil, default_value: "", guidance: "<p>Where you share your data depends on the complexity and size of your data.  Smaller, low-risk datasets can be shared via institutional or disciplinary repositories and project websites. Larger datasets or datasets with more stringent security requirements cannot be easily transferred over the Internet.  Read more about sharing data at the <a href=\"http://www.data-archive.ac.uk/create-manage/planning-for-sharing/how-to-share-data\" target=\"_blank\">UK Data Archive</a>.</p>\r\n<p>Researchers at the University of Alberta can deposit smaller datasets (less than 500MB) in <a href=\"https://dataverse.library.ualberta.ca/dvn/\" target=\"_blank\">Dataverse</a> (for complex data formats such as that produced by SPSS or SAS) or <a href=\"https://era.library.ualberta.ca/public/home\" target=\"_blank\">ERA</a> (for basic data formats such as Excel).  For larger datasets, please contact <a href=\"mailto:data@ualberta.ca\">data@ualberta.ca</a>. </p>", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 5, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "Please describe whether there will be any restrictions placed on your data when they are made available and who may access them.  If data are not openly available, describe the process for gaining access.", question_type: nil, default_value: "", guidance: "<p>It may be necessary or desirable to restrict access to your data for a limited time or to a limited number of people, for:</p>\r\n<ul>\r\n<li>ethical reasons (privacy and confidentiality) </li>\r\n<li>economic reasons (patents and commercialization)</li>\r\n<li>intellectual property reasons (e.g. ownership of the original dataset on which yours is based) </li>\r\n<li>or to comply with a journal publishing policy.  </li>\r\n</ul>\r\n<p>Strategies to mitigate these issues may include: </p>\r\n<ul>\r\n<li>anonymising or aggregating data</li>\r\n<li>gaining participant consent for data sharing</li>\r\n<li>gaining permissions to share adapted or modified data</li>\r\n<li>and agreeing to a limited embargo period.</li>\r\n</ul>", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 5, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "Who will be responsible for data management during the project? (i.e. during collection, processing, analysis, documentation).  Identify staff and organizational roles and their responsibilities for carrying out the data management plan (DMP), including time allocations and training requirements.", question_type: nil, default_value: "", guidance: "", number: 1, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 6, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "What will happen when personnel changes occur or if the principal investigator leaves the institution before the project has concluded?", question_type: nil, default_value: "", guidance: "", number: 2, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 6, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "Who will be responsible for data sharing and preservation after the project has concluded? Indicate the party who will have primary responsibility for how the data will persist over time when the original personnel have moved on. ", question_type: nil, default_value: "", guidance: "", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 6, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "If data are collected using laptops or mobile devices, please explain how will you will securely store and transfer the data.", question_type: nil, default_value: "", guidance: "<p>The University of Alberta’s Encryption Procedure requires that sensitive information stored on mobile computing devices be encrypted.  <a href=\"http://www.vpit.ualberta.ca/encryption/\" target=\"_blank\">Read more about encryption</a></p>", number: 3, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 1, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "How much data do you anticipate collecting?  Include an estimate of how much storage space you will require (in megabytes, gigabytes, terabytes).  This estimate should also take into account storage space required for file versioning, backups, and the growth rate over time. ", question_type: nil, default_value: "", guidance: "<p>The type of data you collect will impact your storage requirements.  Textual and tabular data files are usually very small (a few megabytes) unless you have a lot of data.  Video files are usually very large (hundreds of megabytes up to several gigabytes).  If you have a large amount of data (gigabytes or terabytes), it will be more challenging to share and transfer it.  You may need to consider networked storage options or more sophisticated backup methods.</p>\r\n<p>If your data will be changing frequently, please estimate how much extra storage will be required to store multiple versions.  If you are collecting data over a long period of time (e.g. several months or years), please describe your plan for adding additional storage to accommodate the growth of your data.</p>", number: 4, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 1, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "What conventions and procedures will you use to structure, name and version control your files to ensure that your data is well-organized?\r\n", question_type: nil, default_value: "", guidance: "<p>Ensuring that you and your research team are using the ‘master’ version of your data is extremely important.  Establishing conventions for naming and versioning your files is essential, especially when data may be available in different file formats or stored on different computers.</p>\r\n<p>More information on file naming and version control is available from <a href=\"http://libraries.mit.edu/guides/subjects/data-management/organizing.html\" target=\"_blank\">MIT</a> and the <a href=\"http://www.data-archive.ac.uk/create-manage/format/versions\" target=\"_blank\">UK Data Archive</a>.</p>\r\n<p>University of Alberta Libraries’ <a href=\"https://dataverse.library.ualberta.ca/dvn/\" target=\"_blank\">Dataverse</a> can help with version control of your files.</p>", number: 6, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 1, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "What type of end-user license will you include with your data? Please include a copy of this license with your Data Management Plan. ", question_type: nil, default_value: "", guidance: "<p>Assigning an end-user license allows you to define the terms of use for your data.  We recommend a <a href=\"http://creativecommons.org/choose/\" target=\"_blank\">Creative Commons license</a>.</p>", number: 4, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 5, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 },
  {text: "What resources will you require to implement your plan? Will extra people, time or hardware, storage be required? How much will this cost (estimation)?", question_type: nil, default_value: "", guidance: "<p>More information about estimating cost for data management is available through the <a href=\"http://data-archive.ac.uk/create-manage/planning-for-sharing/costing\" target=\"_blank\">UK Data Archive</a>. This information should be incorporated into any grant applications for your project.</p>", number: 4, parent_id: nil, dependency_id: nil, dependency_text: "", section_id: 6, multiple_choice: false, multiple_permitted: false, is_expanded: true, is_text_field: false, question_format_id: 1 }
])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Examples:

  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)

# Dmptemplate default formatting settings based on https://je-s.rcuk.ac.uk/Handbook/pages/GuidanceonCompletingaStandardG/CaseforSupportandAttachments/CaseforSupportandAttachments.htm

# organisation_types = {
  # 'Organisation' => {
    # name: "Organisation"
  # },
  # 'Funder' => {
    # name: "Funder"
  # },
  # 'Project' => {
    # name: "Project"
  # },
  # 'School' => {
    # name: "School"
  # },
  # 'Institution' => {
    # name: "Institution"
  # },
  # 'Research Institute' => {
    # name: "Research Institute"
  # }
# }

# organisation_types.each do |org_type, details|
  # organisation_type = OrganisationType.new
  # organisation_type.name = details[:name]
  # organisation_type.save!
# end

# organisations = {
  # 'DCC' => {
    # name: "Digital Curation Centre",
    # abbreviation: "DCC",
    # sort_name: "Digital Curation Centre",
    # organisation_type: "Organisation"
  # },
  # 'AHRC' => {
    # name: "Arts and Humanities Research Council",
    # abbreviation: "AHRC",
    # sort_name: "Arts Humanities Research Council",
    # organisation_type: "Funder"
  # },
  # 'Glasgow'=> {
    # name: "University of Glasgow",
    # abbreviation: "Glasgow",
    # domain: "www.gla.ac.uk",
    # sort_name: "Glasgow University",
    # organisation_type: "Institution"
  # }
# }

# organisations.each do |org, details|
  # organisation = Organisation.new
  # organisation.name = details[:name]
  # organisation.abbreviation = details[:abbreviation]
  # organisation.domain = details[:domain]
  # organisation.sort_name = details[:sort_name]
  # organisation.organisation_type = OrganisationType.find_by_name(details[:organisation_type])
  # organisation.save!
# end

# themes = {
  # "Related Policies" => {
    # title: "Related Policies",
    # locale: "en"
  # },
  # "Responsibilities" => {
    # title: "Responsibilities",
    # locale: "en"
  # },
  # "Discovery by Users" => {
    # title: "Discovery by Users",
    # locale: "en"
  # },
  # "Preservation Plan" => {
    # title: "Preservation Plan",
    # locale: "en"
  # },
  # "Period of Preservation" => {
    # title: "Period of Preservation",
    # locale: "en"
  # },
  # "Data Security" => {
    # title: "Data Security",
    # locale: "en"
  # },
  # "Method For Data Sharing" => {
    # title: "Method For Data Sharing",
    # locale: "en"
  # },
  # "Data Capture Methods" => {
    # title: "Data Capture Methods",
    # locale: "en"
  # },
  # "Existing Data" => {
    # title: "Existing Data",
    # locale: "en"
  # },
  # "Restrictions on Sharing" => {
    # title: "Restrictions on Sharing",
    # locale: "en"
  # },
  # "Data Repository" => {
    # title: "Data Repository",
    # locale: "en"
  # },
  # "Timeframe For Data Sharing" => {
    # title: "Timeframe For Data Sharing",
    # locale: "en"
  # },
  # "Expected Reuse" => {
    # title: "Expected Reuse",
    # locale: "en"
  # },
  # "Data Description" => {
    # title: "Data Description",
    # locale: "en"
  # },
  # "Resourcing" => {
    # title: "Resourcing",
    # locale: "en"
  # },
  # "Data Quality" => {
    # title: "Data Quality",
    # locale: "en"
  # },
  # "Data Selection" => {
    # title: "Data Selection",
    # locale: "en"
  # },
  # "Relationship to Existing Data" => {
    # title: "Relationship to Existing Data",
    # locale: "en"
  # },
  # "Data Volumes" => {
    # title: "Data Volumes",
    # locale: "en"
  # },
  # "IPR Ownership and Licencing" => {
    # title: "IPR Ownership and Licencing",
    # locale: "en"
  # },
  # "Managed Access Procedures" => {
    # title: "Managed Access Procedures",
    # locale: "en"
  # },
  # "Ethical Issues" => {
    # title: "Ethical Issues",
    # locale: "en"
  # },
  # "Metadata" => {
    # title: "Metadata",
    # locale: "en"
  # },
  # "Documentation" => {
    # title: "Documentation",
    # locale: "en"
  # },
  # "Storage and Backup" => {
    # title: "Storage and Backup",
    # locale: "en"
  # },
  # "Data Type" => {
    # title: "Data Type",
    # locale: "en"
  # },
  # "Data Format" => {
    # title: "Data Format",
    # locale: "en"
  # },
  # "ID" => {
    # title: "ID",
    # locale: "en",
    # description: "An ID or reference number relevant to this DMP."
  # },
  # "Project Name" => {
    # title: "Project Name",
    # locale: "en",
    # description: "The Project Name given here should be the same as on any other documentation, for example, grant applications, ethics approval forms, etc."
  # },
  # "Project Description" => {
    # title: "Project Description",
    # locale: "en",
    # description: "A brief description of the project"
  # },
  # "PI / Researcher" => {
    # title: "PI / Researcher",
    # locale: "en",
    # description: "The name of the PI or Researcher who is responsible for this research project"
  # }
# }

# themes.each do |t, details|
  # theme = Theme.new
  # theme.title = details[:title]
  # theme.locale = details[:locale]
  # theme.description = details[:description]
  # theme.save!
# end

# question_formats = {
  # "Text area" => {
    # title: "Text area"
  # },
  # "Text field" => {
    # title: "Text field"
  # },
  # "Radio buttons" => {
    # title: "Radio buttons"
  # },
  # "Check box" => {
    # title: "Check box"
  # },
  # "Dropdown" => {
    # title: "Dropdown"
  # },
  # "Multi select box" => {
    # title: "Multi select box"
  # },
# }

# question_formats.each do |qf, details|
  # question_format = QuestionFormat.new
  # question_format.title = details[:title]
  # question_format.save!
# end

# guidance_groups = {
  # "DCC Guidance" => {
    # name: "DCC Guidance",
    # organisation: "DCC",
    # optional_subset: false
  # }
# }

# guidance_groups.each do |gg, details|
  # guidance_group = GuidanceGroup.new
  # guidance_group.name = details[:name]
  # guidance_group.organisation = Organisation.find_by_abbreviation(details[:organisation])
  # guidance_group.optional_subset = details[:optional_subset]
  # guidance_group.save!
# end

# guidances = {
  # "DCC_1" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Are any restrictions on data sharing required? e.g. limits on who can use the data, when and for what purpose.</li> <li>What restrictions are needed and why?</li> <li>What action will you take to overcome or minimise restrictions?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Outline any expected difficulties in data sharing, along with causes and possible measures to overcome these. Restrictions to data sharing may be due to participant confidentiality, consent agreements or IPR. Strategies to limit restrictions may include: anonymising or aggregating data; gaining participant consent for data sharing; gaining copyright permissions; and agreeing a limited embargo period. </p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Restrictions on Sharing"]
  # },
  # "DCC_2" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Are there any existing data or methods that you can reuse?</li><li>Do you need to pay to reuse existing data?</li><li>Are there any restrictions on the reuse of third-party data?</li><li>Can the data that you create - which may be derived from third-party data - be shared?</li> </ul> <p class='guidance_header'>Guidance: </p> <p>Check to see if there are any existing data that you can reuse, for examples by consulting relevant repositories. When creating new data sources, explain why existing data sources cannot be reused. If purchasing or reusing existing data sources, explain how issues such as copyright and IPR have been addressed. A list of repositories is provided by <a target='_blank' href='http://databib.org'>Databib</a> or <a target='_blank' href='http://www.re3data.org'>Re3data</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Existing Data"]
  # },
  # "DCC_3" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Are there any existing procedures that you will base your approach on?</li> <li>Does your department/group have data management guidelines?</li> <li>Does your institution have a data protection or security policy that you will follow?</li> <li>Does your institution have a Research Data Management (RDM) policy?</li> <li>Does your funder have a Research Data Management policy?</li> <li>Are there any formal standards that you will adopt?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>List any other relevant funder, institutional, departmental or group policies on data management, data sharing and data security. Some of the information you give in the remainder of the DMP will be determined by the content of other policies. If so, point/link to them here.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Related Policies"]
  # },
  # "DCC_4" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Do you have sufficient storage?</li> <li>Do you need to include costs for additional managed storage?</li> <li>Will the scale of the data pose challenges when sharing or transferring data between sites?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Consider the implications of data volumes in terms of storage, backup and access. Estimate the volume of data in MB/GB/TB and how this will grow to make sure any additional storage and technical support required can be provided.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Data Volumes"]
  # },
  # "DCC_5" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Have you gained consent for data preservation and sharing?</li> <li>How will sensitive data be handled to ensure it is stored and transferred securely?</li> <li>How will you protect the identity of participants? e.g. via anonymisation or using managed access procedures</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Investigators carrying out research involving human participants must ensure that consent is obtained to share data. Managing ethical concerns may include: anonymisation of data; referral to departmental or institutional ethics committees; and formal consent agreements. Ethical issues may affect how you store data, who can see/use it and how long it is kept. You should show that you&#8217;re aware of this and have planned accordingly.</p> <p>See UKDS guidance on <a target='_blank' href='http://ukdataservice.ac.uk/manage-data/legal-ethical/consent-data-sharing.aspx'>consent for data sharing</a></p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Ethical Issues"]
  # },
  # "DCC_6" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>How long will the data be retained and preserved?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>This may depend on the type of data. Most research funders expect data to be retained for a minimum of 10 years from the end of the project. For data that by their nature cannot be re-measured, efforts should be made to retain them indefinitely.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Period of Preservation"]
  # },
  # "DCC_7" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>How will potential users find out about your data?</li> <li>Will you provide metadata online to aid discovery and reuse?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Indicate how potential new users can find out about your data and identify whether they could be suitable for their research purposes. For example, you may provide basic discovery metadata online (i.e. the title, author, subjects, keywords and publisher).</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Discovery by Users"]
  # },
  # "DCC_8" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>How will the data be created?</li> <li>What standards or methodologies will you use?</li><li>How will you structure and name your folders and files?</li><li>How will you ensure that different versions of a dataset are easily identifiable?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Outline how the data will be collected/generated and which community data standards (if any) will be used at this stage. Indicate how the data will be organised during the project, mentioning for example naming conventions, version control and folder structures. Consistent, well-ordered research data will be easier for the research team to find, understand and reuse.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Data Capture Methods"]
  # },
  # "DCC_9" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>How will you control data capture to ensure data quality?</li> <li>What quality assurance processes will you adopt?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Explain how the consistency and quality of data collection will be controlled and documented. This may include processes such as calibration, repeat samples or measurements, standardised data capture or recording, data entry validation, peer review of data or representation with controlled vocabularies.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Data Quality"]
  # },
  # "DCC_10" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>How will you make the data available to others?</li> <li>With whom will you share the data, and under what conditions?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Consider where, how, and to whom the data should be made available. Will you share data via a data repository, handle data requests directly or use another mechanism? </p> <p>The methods used to share data will be dependent on a number of factors such as the type, size, complexity and sensitivity of data. Mention earlier examples to show a track record of effective data sharing.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Method For Data Sharing"]
  # },
  # "DCC_11" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What are the risks to data security and how will these be managed?</li> <li>Will you follow any formal standards?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>If your data is sensitive (e.g. detailed personal data, politically sensitive information or trade secrets) you should discuss any appropriate security measures that you will be taking. Note the main risks and how these will be managed. Identify any formal standards that you will comply with e.g. ISO 27001.</p> <p>See DCC Briefing Paper on <a target='_blank' href='http://www.dcc.ac.uk/resources/briefing-papers/standards-watch-papers/information-security-management-iso-27000-iso-27k-s'>Information Security Management - ISO 27000</a>.</p> <p>See UKDS guidance on <a target='_blank' href='http://ukdataservice.ac.uk/manage-data/store/security.aspx'>data security</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Data Security"]
  # },
  # "DCC_12" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What data will you create?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Give a brief description of the data that will be created, noting its content and coverage</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Data Description"]
  # },
  # "DCC_13" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What format will your data be in?</li> <li>Why have you chosen to use particular formats?</li> <li>Do the chosen formats and software enable sharing and long-term validity of data?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Outline and justify your choice of format e.g. SPSS, Open Document Format, tab-delimited format, MS Excel. Decisions may be based on staff expertise, a preference for open formats, the standards accepted by data centres or widespread usage within a given community. Using standardised and interchangeable or open lossless data formats ensures the long-term usability of data.</p> <p>See UKDS Guidance on <a target='_blank' href='http://ukdataservice.ac.uk/manage-data/format/recommended-formats.aspx'>recommended formats</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Data Format"]
  # },
  # "DCC_14" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What is the long-term preservation plan for the dataset? e.g. deposit in a data repository</li> <li>Will additional resources be needed to prepare data for deposit or meet charges from data repositories?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Researchers should consider how datasets that have long-term value will be preserved and curated beyond the lifetime of the grant. Also outline the plans for preparing and documenting data for sharing and archiving.</p> <p>If you do not propose to use an established repository, the data management plan should demonstrate that resources and systems will be in place to enable the data to be curated effectively beyond the lifetime of the grant.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Preservation Plan"]
  # },
  # "DCC_15" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What is the relationship to existing data e.g. in public repositories?</li> <li>How does your data complement and integrate with existing data?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Consider the relationship between the data that you will capture and existing data available in public repositories or elsewhere.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Relationship to Existing Data"]
  # },
  # "DCC_16" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What metadata, documentation or other supporting material should accompany the data for it to be interpreted correctly?</li> <li>What information needs to be retained to enable the data to be read and interpreted in the future?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Describe the types of documentation that will accompany the data to provide secondary users with any necessary details to prevent misuse, misinterpretation or confusion. This may include information on the methodology used to collect the data, analytical and procedural information, definitions of variables, units of measurement, any assumptions made, the format and file type of the data.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Documentation"]
  # },
  # "DCC_17" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What types of data will you create?</li> <li>Which types of data will have long-term value?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Outline the types of data that are expected to be produced from the project e.g. quantitative, qualitative, survey data, experimental measurements, models, images, audiovisual data, samples etc. Include the raw data arising directly from the research, the reduced data derived from it, and published data.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Data Type"]
  # },
  # "DCC_18" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>When will you make the data available?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Data (with accompanying metadata) should be shared in a timely fashion. It is generally expected that timely release would be no later than publication of the main findings and should be in-line with established best practice in the field. Researchers have a legitimate interest in benefiting from their investment of time and effort in producing data, but not in prolonged exclusive use.  Research funders typically allow embargoes in line with practice in the field, but expect these to be outlined up-front and justified.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Timeframe For Data Sharing"]
  # },
  # "DCC_19" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Where (i.e. in which repository) will the data be deposited?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Most research funders recommend the use of established data repositories, community databases and related initiatives to aid data preservation, sharing and reuse.</p> <p>An international list of data repositories is available via <a target='_blank' href='http://databib.org'>Databib</a> or <a target='_blank' href='http://www.re3data.org'>Re3data</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Data Repository"]
  # },
  # "DCC_20" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Which data are of long-term value and should be shared and/or preserved?</li> <li>How will you decide what to keep?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Indicate which data you intend to preserve beyond the period of funding. This should be based on what has long-term value and is economically viable to keep. Consider how long you wish to keep the data and what will happen to it e.g. deposit in a data repository to enable reuse.</p> <p>See the DCC guide: <a target='_blank' href='http://www.dcc.ac.uk/resources/how-guides/appraise-select-data'>How to appraise and select research data for curation</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Data Selection"]
  # },
  # "DCC_21" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Who is responsible for each data management activity?</li> <li>How are responsibilities split across partner sites in collaborative research projects?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Outline the roles and responsibilities for all activities e.g. data capture, metadata production, data quality, storage and backup, data archiving &amp; data sharing. Individuals should be named where possible. For collaborative projects you should explain the co-ordination of data management responsibilities across partners.</p> <p>See UKDS guidance on data management <a target='_blank' href='http://ukdataservice.ac.uk/manage-data/plan/roles-and-responsibilities.aspx'>roles and responsibilities</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Responsibilities"]
  # },
  # "DCC_22" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Who may be interested in using your data?</li><li>What are the further intended or foreseeable research uses for the data?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>You should think about the possibilities for reuse of your data in other contexts and by other users, and connect this as appropriate with your plans for dissemination and Pathways to Impact. Where there is potential for reuse, you should use standards and formats that facilitate this. Where possible outline the types of users you expect and estimate numbers.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Expected Reuse"]
  # },
  # "DCC_23" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Who owns the data?</li> <li>How will the data be licensed for reuse?</li><li>If you are using third-party data, how do the permissions you have been granted affect licensing?</li> <li>Will data sharing be postponed / restricted e.g. to seek patents?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>State who will own the copyright and IPR of any new data that you will generate. For multi-partner projects, IPR ownership may be worth covering in a consortium agreement. If purchasing or reusing existing data sources, consider how the permissions granted to you affect licensing decisions. Outline any restrictions needed on data sharing e.g. to protect proprietary or patentable data.</p> <p>See the DCC guide: <a target='_blank' href='http://www.dcc.ac.uk/resources/how-guides/license-research-data'>How to license research data</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["IPR Ownership and Licencing"]
  # },
  # "DCC_24" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Will access be tightly controlled or restricted? e.g. by using data enclaves / secure data services</li> <li>Will a data sharing agreement be required?</li> <li>How will the data be licensed for reuse?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Indicate whether external users will be bound by data sharing agreements, licenses or end-user agreements. If so, set out the terms and key responsibilities to be followed. Note how access will be controlled, for example by the use of specialist services. A data enclave provides a controlled secure environment in which eligible researchers can perform analyses using restricted data resources. Where a managed access process is required, the procedure should be clearly described and transparent.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Managed Access Procedures"]
  # },
  # "DCC_25" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul><li>How will you capture / create the metadata?</li><li>Can any of this information be created automatically?</li><li>What metadata standards will you use and why?</li></ul> <p class='guidance_header'>Guidance:</p> <p>Metadata should be created to describe the data and aid discovery. Consider how you will capture this information and where it will be recorded e.g. in a database with links to each item, in a ‘readme’ text file, in file headers etc.</p><p>Researchers are strongly encouraged to use community standards to describe and structure data, where these are in place. The DCC offers a <a target='_blank' href='http://www.dcc.ac.uk/resources/metadata-standards'>catalogue of disciplinary metadata standards</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Metadata"]
  # },
  # "DCC_26" => {
    # text: "<p class='guidance_header'>Questions to consider:</p><ul><li>What additional resources are needed to deliver your plan?</li> <li>Is additional specialist expertise (or training for existing staff) required?</li><li>Do you have sufficient storage and equipment or do you need to cost in more?</li><li>Will charges be applied by data repositories?</li><li>Have you costed in time and effort to prepare the data for sharing / preservation?</li></ul><p class='guidance_header'>Guidance:</p> <p>Carefully consider any resources needed to deliver the plan. Where dedicated resources are needed, these should be outlined and justified. Outline any relevant technical expertise, support and training that is likely to be required and how it will be acquired. Provide details and justification for any hardware or software which will be purchased or additional storage and backup costs that may be charged by IT services. </p><p>Funding should be included to cover any charges applied by data repositories, for example to handle data of exceptional size or complexity. Also remember to cost in time and effort to prepare data for deposit and ensure it is adequately documented to enable reuse. If you are not depositing in a data repository, ensure you have appropriate resources and systems in place to share and preserve the data.</p> <p>See UKDS guidance on <a target='_blank' href='http://ukdataservice.ac.uk/manage-data/plan/costing.aspx'>costing data management</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Resourcing"]
  # },
  # "DCC_27" => {
    # text: "<p class='guidance_header'>Questions to consider:</p> <ul><li>Where will the data be stored?</li> <li>How will the data be backed up? i.e. how often, to where, how many copies, is this automated&#8230;</li> <li>Who will be responsible for storage and backup?</li> <li>Do you have access to enough storage or will you need to include charges for additional services?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Describe how the data will be stored and backed-up to ensure the data and metadata are securely stored during the lifetime of the project. Storing data on laptops, computer hard drives or external storage devices alone is very risky. The use of robust, managed storage with automatic backup, for example that provided by university IT teams, is preferable.</p> <p>See UKDA guidance on <a target='_blank' href='http://data-archive.ac.uk/create-manage/storage.aspx'>data storage and backup</a>.</p>",
    # guidance_group: "DCC Guidance",
    # themes: ["Storage and Backup"]
  # }
# }

# guidances.each do |g, details|
  # guidance = Guidance.new
  # guidance.text = details[:text]
  # guidance.guidance_groups << GuidanceGroup.find_by_name(details[:guidance_group])
  # details[:themes].each do |theme|
    # guidance.themes << Theme.find_by_title(theme)
  # end
  # guidance.save!
# end

# templates = {
  # "DCC" => {
    # title: "DCC Template",
    # description: "The default DCC template",
    # published: true,
    # organisation: "DCC",
    # locale: "en",
    # is_default: true
  # },
  # "AHRC" => {
    # title: "AHRC Template",
    # description: "The AHRC template",
    # published: true,
    # organisation: "AHRC",
    # locale: "en",
    # is_default: false
  # }
# }

# templates.each do |t, details|
  # template = Dmptemplate.new
  # template.title = details[:title]
  # template.description = details[:description]
  # template.published = details[:published]
  # template.locale = details[:locale]
  # template.is_default = details[:is_default]
  # template.organisation = Organisation.find_by_abbreviation(details[:organisation])
  # template.save!
# end

# phases = {
  # "DCC" => {
    # title: "DCC Template",
    # number: 1,
    # template: "DCC Template"
  # },
  # "AHRC" => {
    # title: "AHRC Technical Plan",
    # number: 1,
    # template: "AHRC Template"
  # },
# }

# phases.each do |p, details|
  # phase = Phase.new
  # phase.title = details[:title]
  # phase.number = details[:number]
  # phase.dmptemplate = Dmptemplate.find_by_title(details[:template])
  # phase.save!
# end

# versions = {
  # "DCC" => {
    # title: "DCC Template Version 1",
    # number: 1,
    # phase: "DCC Template"
  # },
  # "AHRC" => {
    # title: "AHRC Data Management Questions (Version 1)",
    # number: 1,
    # phase: "AHRC Technical Plan"
  # },
# }

# versions.each do |v, details|
  # version = Version.new
  # version.title = details[:title]
  # version.number = details[:number]
  # version.phase = Phase.find_by_title(details[:phase])
  # version.save!
# end

# sections = {
  # "Data Collection" => {
    # title: "Data Collection",
    # number: 1,
    # description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    # version: "DCC Template Version 1",
    # organisation: "DCC"
  # },
  # "Documentation and Metadata" => {
    # title: "Documentation and Metadata",
    # number: 2,
    # description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    # version: "DCC Template Version 1",
    # organisation: "DCC"
  # },
  # "Ethics and Legal Compliance" => {
    # title: "Ethics and Legal Compliance",
    # number: 3,
    # description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    # version: "DCC Template Version 1",
    # organisation: "DCC"
  # },
  # "Storage and Backup" => {
    # title: "Storage and Backup",
    # number: 4,
    # description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    # version: "DCC Template Version 1",
    # organisation: "DCC"
  # },
  # "Selection and Preservation" => {
    # title: "Selection and Preservation",
    # number: 5,
    # description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    # version: "DCC Template Version 1",
    # organisation: "DCC"
  # },
  # "Data Sharing" => {
    # title: "Data Sharing",
    # number: 6,
    # description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    # version: "DCC Template Version 1",
    # organisation: "DCC"
  # },
  # "Responsibilities and Resources" => {
    # title: "Responsibilities and Resources",
    # number: 7,
    # description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    # version: "DCC Template Version 1",
    # organisation: "DCC"
  # },
  # "1: Summary of Digital Outputs and Digital Technologies" => {
    # title: "1: Summary of Digital Outputs and Digital Technologies",
    # number: 1,
    # version: "AHRC Data Management Questions (Version 1)",
    # organisation: "AHRC"
  # },
  # "2: Technical Methodology" => {
    # title: "2: Technical Methodology",
    # number: 2,
    # version: "AHRC Data Management Questions (Version 1)",
    # organisation: "AHRC"
  # },
  # "3: Technical Support and Relevant Experience" => {
    # title: "3: Technical Support and Relevant Experience",
    # number: 3,
    # version: "AHRC Data Management Questions (Version 1)",
    # organisation: "AHRC"
  # },
  # "4: Preservation, Sustainability and Use" => {
    # title: "4: Preservation, Sustainability and Use",
    # number: 4,
    # version: "AHRC Data Management Questions (Version 1)",
    # organisation: "AHRC"
  # }
# }

# sections.each do |s, details|
  # section = Section.new
  # section.title = details[:title]
  # section.number = details[:number]
  # section.description = details[:description]
  # section.version = Version.find_by_title(details[:version])
  # section.organisation = Organisation.find_by_name(details[:organisation])
  # section.save!
# end

# questions = {
  # "What data will you collect or create?" => {
    # text: "What data will you collect or create?",
    # section: "Data Collection",
    # number: 1,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What type, format and volume of data?</li> <li>Do your chosen formats and software enable sharing and long-term access to the data?</li> <li>Are there any existing data that you can reuse?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Give a brief description of the data, including any existing data or third-party sources that will be used, in each case noting its content, type and coverage. Outline and justify your choice of format and consider the implications of data format and data volumes in terms of storage, backup and access.</p>",
    # themes: ["Existing Data", "Data Volumes", "Data Type", "Data Format"]
  # },
  # "How will the data be collected or created?" => {
    # text: "How will the data be collected or created?",
    # section: "Data Collection",
    # number: 2,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What standards or methodologies will you use?</li> <li>How will you structure and name your folders and files?</li> <li>How will you handle versioning?</li> <li>What quality assurance processes will you adopt?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Outline how the data will be collected/created and which community data standards (if any) will be used. Consider how the data will be organised during the project, mentioning for example naming conventions, version control and folder structures. Explain how the consistency and quality of data collection will be controlled and documented. This may include processes such as calibration, repeat samples or measurements, standardised data capture or recording, data entry validation, peer review of data or representation with controlled vocabularies.</p>",
    # themes: ["Data Capture Methods", "Data Quality"]
  # },
  # "What documentation and metadata will accompany the data?" => {
    # text: "What documentation and metadata will accompany the data?",
    # section: "Documentation and Metadata",
    # number: 1,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What information is needed for the data to be to be read and interpreted in the future?</li> <li>How will you capture / create this documentation and metadata?</li> <li>What metadata standards will you use and why?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Describe the types of documentation that will accompany the data to help secondary users to understand and reuse it. This should at least include basic details that will help people to find the data, including who created or contributed to the data, its title, date of creation and under what conditions it can be accessed.</p> <p>Documentation may also include details on the methodology used, analytical and procedural information, definitions of variables, vocabularies, units of measurement, any assumptions made, and the format and file type of the data. Consider how you will capture this information and where it will be recorded. Wherever possible you should identify and use existing community standards.</p>",
    # themes: ["Documentation", "Metadata"]
  # },
  # "How will you manage any ethical issues?" => {
    # text: "How will you manage any ethical issues?",
    # section: "Ethics and Legal Compliance",
    # number: 1,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Have you gained consent for data preservation and sharing?</li> <li>How will you protect the identity of participants if required? e.g. via anonymisation</li> <li>How will sensitive data be handled to ensure it is stored and transferred securely?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Ethical issues affect how you store data, who can see/use it and how long it is kept. Managing ethical concerns may include: anonymisation of data; referral to departmental or institutional ethics committees; and formal consent agreements. You should show that you are aware of any issues and have planned accordingly. If you are carrying out research involving human participants, you must also ensure that consent is requested to allow data to be shared and reused.</p>",
    # themes: ["Ethical Issues"]
  # },
  # "How will you manage copyright and Intellectual Property Rights (IPR) issues?" => {
    # text: "How will you manage copyright and Intellectual Property Rights (IPR) issues?",
    # section: "Ethics and Legal Compliance",
    # number: 2,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Who owns the data?</li> <li>How will the data be licensed for reuse?</li> <li>Are there any restrictions on the reuse of third-party data?</li> <li>Will data sharing be postponed / restricted e.g. to publish or seek patents?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>State who will own the copyright and IPR of any data that you will collect or create, along with the licence(s) for its use and reuse. For multi-partner projects, IPR ownership may be worth covering in a consortium agreement. Consider any relevant funder, institutional, departmental or group policies on copyright or IPR. Also consider permissions to reuse third-party data and any restrictions needed on data sharing.</p>",
    # themes: ["IPR Ownership and Licencing"]
  # },
  # "How will the data be stored and backed up during the research?" => {
    # text: "How will the data be stored and backed up during the research?",
    # section: "Storage and Backup",
    # number: 1,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Do you have sufficient storage or will you need to include charges for additional services?</li> <li>How will the data be backed up?</li> <li>Who will be responsible for backup and recovery?</li> <li>How will the data be recovered in the event of an incident?</li> </ul> <p class='guidance_header'>Guidance: </p> <p>State how often the data will be backed up and to which locations. How many copies are being made? Storing data on laptops, computer hard drives or external storage devices alone is very risky. The use of robust, managed storage provided by university IT teams is preferable. Similarly, it is normally better to use automatic backup services provided by IT Services than rely on manual processes. If you choose to use a third-party service, you should ensure that this does not conflict with any funder, institutional, departmental or group policies, for example in terms of the legal jurisdiction in which data are held or the protection of sensitive data.</p>",
    # themes: ["Storage and Backup"]
  # },
  # "How will you manage access and security?" => {
    # text: "How will you manage access and security?",
    # section: "Storage and Backup",
    # number: 2,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What are the risks to data security and how will these be managed?</li> <li>How will you control access to keep the data secure?</li> <li>How will you ensure that collaborators can access your data securely?</li> <li>If creating or collecting data in the field how will you ensure its safe transfer into your main secured systems?</li> </ul> <p class='guidance_header'>Guidance: </p> <p>If your data is confidential (e.g. personal data not already in the public domain, confidential information or trade secrets), you should outline any appropriate security measures and note any formal standards that you will comply with e.g. ISO 27001.&quot;</p>",
    # themes: ["Data Security"]
  # },
  # "Which data are of long-term value and should be retained, shared, and/or preserved?" => {
    # text: "Which data are of long-term value and should be retained, shared, and/or preserved?",
    # section: "Selection and Preservation",
    # number: 1,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What data must be retained/destroyed for contractual, legal, or regulatory purposes?</li> <li>How will you decide what other data to keep?</li> <li>What are the foreseeable research uses for the data?</li> <li>How long will the data be retained and preserved?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Consider how the data may be reused e.g. to validate your research findings, conduct new studies, or for teaching. Decide which data to keep and for how long. This could be based on any obligations to retain certain data, the potential reuse value, what is economically viable to keep, and any additional effort required to prepare the data for data sharing and preservation. Remember to consider any additional effort required to prepare the data for sharing and preservation, such as changing file formats.</p>",
    # themes: ["Data Selection"]
  # },
  # "What is the long-term preservation plan for the dataset?" => {
    # text: "What is the long-term preservation plan for the dataset?",
    # section: "Selection and Preservation",
    # number: 2,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Where e.g. in which repository or archive will the data be held?</li> <li>What costs if any will your selected data repository or archive charge?</li> <li>Have you costed in time and effort to prepare the data for sharing / preservation?</li> </ul> <p class='guidance_header'>Guidance: </p> <p>Consider how datasets that have long-term value will be preserved and curated beyond the lifetime of the grant. Also outline the plans for preparing and documenting data for sharing and archiving. If you do not propose to use an established repository, the data management plan should demonstrate that resources and systems will be in place to enable the data to be curated effectively beyond the lifetime of the grant.</p>",
    # themes: ["Preservation Plan", "Data Repository"]
  # },
  # "How will you share the data?" => {
    # text: "How will you share the data?",
    # section: "Data Sharing",
    # number: 1,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>How will potential users find out about your data?</li> <li>With whom will you share the data, and under what conditions?</li> <li>Will you share data via a repository, handle requests directly or use another mechanism?</li> <li>When will you make the data available?</li> <li>Will you pursue getting a persistent identifier for your data?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Consider where, how, and to whom data with acknowledged long-term value should be made available. The methods used to share data will be dependent on a number of factors such as the type, size, complexity and sensitivity of data. If possible, mention earlier examples to show a track record of effective data sharing. Consider how people might acknowledge the reuse of your data.</p>",
    # themes: ["Method For Data Sharing"]
  # },
  # "Are any restrictions on data sharing required?" => {
    # text: "Are any restrictions on data sharing required?",
    # section: "Data Sharing",
    # number: 2,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>What action will you take to overcome or minimise restrictions?</li> <li>For how long do you need exclusive use of the data and why?</li> <li>Will a data sharing agreement (or equivalent) be required?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Outline any expected difficulties in sharing data with acknowledged long-term value, along with causes and possible measures to overcome these. Restrictions may be due to confidentiality, lack of consent agreements or IPR, for example. Consider whether a non-disclosure agreement would give sufficient protection for confidential data.</p>",
    # themes: ["Restrictions on Sharing"]
  # },
  # "Who will be responsible for data management?" => {
    # text: "Who will be responsible for data management?",
    # section: "Responsibilities and Resources",
    # number: 1,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Who is responsible for implementing the DMP, and ensuring it is reviewed and revised?</li> <li>Who will be responsible for each data management activity?</li> <li>How will responsibilities be split across partner sites in collaborative research projects?</li> <li>Will data ownership and responsibilities for RDM be part of any consortium agreement or contract agreed between partners?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Outline the roles and responsibilities for all activities e.g. data capture, metadata production, data quality, storage and backup, data archiving &amp; data sharing. Consider who will be responsible for ensuring relevant policies will be respected. Individuals should be named where possible.</p>",
    # themes: ["Responsibilities"]
  # },
  # "What resources will you require to deliver your plan?" => {
    # text: "What resources will you require to deliver your plan?",
    # section: "Responsibilities and Resources",
    # number: 2,
    # guidance: "<p class='guidance_header'>Questions to consider:</p> <ul> <li>Is additional specialist expertise (or training for existing staff) required?</li> <li>Do you require hardware or software which is additional or exceptional to existing institutional provision?</li> <li>Will charges be applied by data repositories?</li> </ul> <p class='guidance_header'>Guidance:</p> <p>Carefully consider any resources needed to deliver the plan, e.g. software, hardware, technical expertise, etc. Where dedicated resources are needed, these should be outlined and justified.</p>",
    # themes: ["Resourcing"]
  # },
  # "Summary of Digital Outputs and Digital Technologies" => {
    # text: "Summary of Digital Outputs and Digital Technologies",
    # section: "1: Summary of Digital Outputs and Digital Technologies",
    # number: 1,
    # guidance: "<p>You should provide a brief and clear description of the digital output or digital technology being proposed, considering the following aspects: purpose, source data, content, functionality, use and its relationship to the research questions. You should identify the type of access envisaged, if applicable, such as 'freely available online'.</p><p>The summary should provide clear overview of what you intend to achieve technically, to enable reviewers to assess whether the plans for achieving this are appropriate. You should provide a level of detail which is appropriate to the digital output or digital technology being proposed and its cost and status within the project.</p>",
    # themes: ["Method For Data Sharing", "Data Description"]
  # },
  # "2a: Standards and Formats" => {
    # text: "2a: Standards and Formats",
    # section: "2: Technical Methodology",
    # number: 1,
    # guidance: "<p>You should provide information about your choice of data and file formats. You must provide any relevant vital statistics relating to the data, such as size, quantity and duration. Although such statistics might need to rely on estimation, you should provide the reasoning behind your calculations. You should give your reasons for using the standards or formats chosen.<p>",
    # themes: ["Data Volumes", "Metadata" , "Data Format"]
  # },
  # "2b: Hardware and Software" => {
    # text: "2b: Hardware and Software",
    # section: "2: Technical Methodology",
    # number: 2,
    # guidance: "<p>You should provide information about and the rationale for any hardware or software which will be used to support the project’s research methodology, which is additional or exceptional to conventional desk-based research and institutional provision. They should be included in the Justification of Resources and cross-referenced if there is an associated budget line. Where necessary you should produce additional justification of the use of such items.</p><p>You must write ‘Not applicable’ if this section is not relevant to the type of digital output or digital technology proposed.</p>",
    # themes: ["Resourcing"]
  # },
  # "2c: Data Acquisition, Processing, Analysis and Use" => {
    # text: "2c: Data Acquisition, Processing, Analysis and Use",
    # section: "2: Technical Methodology",
    # number: 3,
    # guidance: "<p>You should provide information about the process of technical development, showing how the standards and formats described in section 2.a and the hardware and software described in section 2.b relate to each other. You must show that you have considered how you will achieve your digital output or digital technology in practice, including issues of timetabling.</p><p>You should consider the technical development process from the point of data capture or data creation through to final delivery (in the case of a digital output) or analysis (in the case of a digital process). You should consider issues such as backup, monitoring, quality control and internal documentation where relevant, identifying procedures which are appropriate to the research environment. For example Technical Reviewers acknowledge that the backup procedures which are possible during fieldwork might be very different to those which are possible within an office environment.</p><p>This section needs to relate to the timetable and milestones given in the Case for Support as well as the project’s overall research methodology.  The Technical Reviewer will be assessing the alignment of the technical development process with other project activities for logic and timeliness.</p>",
    # themes: ["Data Capture Methods", "Data Quality", "Documentation", "Storage and Backup"]
  # },
  # "Technical Support and Relevant Experience" => {
    # text: "Technical Support and Relevant Experience",
    # section: "3: Technical Support and Relevant Experience",
    # number: 1,
    # guidance: "<p>You should provide information about the relevant expertise, including examples, of all individuals, facilities, organisations or services that will be responsible for the technical components of your project.</p><p>You should identify which aspects of the technical work will be undertaken by these project participants, identifying key individuals where possible. It should be clear to a reviewer that you have access to the appropriate skills and expertise that will deliver a successful project.</p><p>In your assessment of risk, under 'Project Management' in the Case for Support, you should consider the risks to the project if a key individual becomes unavailable, including the contingency plan for acquiring these skills from elsewhere.</p><p>You are encouraged, wherever appropriate, to seek partners from outside your institution to cover the technical elements of the project, and/or to seek relevant external advice. The key consideration is that your project should be informed by the right level of technical expertise in conception, development and execution. You should provide information about any external advice which you have sought.</p><p>You must identify the need for any additional training or expertise and give information as to how this will be provided.</p><p>In order to reduce risk to project development and sustainability, and unless there are good reasons not to do so, it is generally wise to ensure that the technical expertise employed by your project is supported by expertise in your institution or one that is a partner to the project. You should show how far this is the case.</p><p>The expertise and experience of the participants responsible for the project’s technical components - whether internal or external to your institution - must be evident from the quality of the Technical Plan as a whole. Applicants who claim to be able to draw upon considerable expertise, but are unable to show that they have worked closely with the relevant project participants in completing the Technical Plan, will not be viewed favourably by Technical Reviewers. Similarly, it is unacceptable to state that these participants will address technical issues during the course of the project and then fail to provide sufficient technical detail in the Technical Plan. </p>",
    # themes: ["Responsibilities", "Resourcing"]
  # },
  # "4a: Preserving Your Data" => {
    # text: "4a: Preserving Your Data",
    # section: "4: Preservation, Sustainability and Use",
    # number: 1,
    # guidance: "<p>Preservation of digital outputs is necessary in order for them to endure changes in the technological environment and remain potentially re-usable in the future. In this section you must state what, if any, digital outputs of your project you intend to preserve beyond the period of funding.</p><p>The length and cost of preservation should be proportionate to the value and significance of the digital outputs. If you believe that none of these should be preserved this must be justified, and if the case is a good one the application will not be prejudiced.</p><p>You must consider preservation in four ways: what, where, how and for how long. You must also consider any institutional support needed in order to carry out these plans, whether from an individual, facility, organisation or service.</p><p>You should think about the possibilities for re-use of your data in other contexts and by other users, and connect this as appropriate with your plans for dissemination and Pathways to Impact.Where there is potential for re-usability, you should use standards and formats that facilitate this.</p><p>The Technical Reviewer will be looking for evidence that you understand the reasons for the choice of technical standards and formats described in Section 2.a Technical Methodology: Standards and Formats.</p><p>You should describe the types of documentation which will accompany the data. Documentation in this sense means technical documentation as well as user documentation. It includes, for instance, technical description, code commenting, project-build guidelines, the documentation of technical decisions and resource metadata which is additional to the standards which you have described in Section 2.a. Not all types of documentation will be relevant to a project and the quantity of documentation proposed should be proportionate to the envisaged value of the data.</p>",
    # themes: ["Preservation Plan", "Data Repository", "Data Selection"]
  # },
  # "4b: Ensuring Continued Accessibility and Use of Your Digital Outputs" => {
    # text: "4b: Ensuring Continued Accessibility and Use of Your Digital Outputs",
    # section: "4: Preservation, Sustainability and Use",
    # number: 2,
    # guidance: "<p>In this section you must provide information about any plans for ensuring that digital outputs remain sustainable in the sense of immediately accessible and usable beyond the period of funding. There are costs to ensuring sustainability in this sense over and above the costs of preservation. The project's sustainability plan should therefore be proportionate to the envisaged longer-term value of the data for the research community and should be closely related to your plans for dissemination and Pathways to Impact.</p><p>If you believe that digital outputs should not be sustained beyond the period of funding then this should be justified. It is not mandatory to sustain all digital outputs. While you should consider the long-term value of the digital outputs to the research community, where they are purely ancillary to a project’s research outputs there may not be a case for sustaining them (though there would usually be a case for preservation).</p><p>You must consider the sustainability of your digital outputs in five ways: what, where, how, for how long, and how the cost will be covered. You must make appropriate provision for user consultation and user testing in this connection, and plan the development of suitable user documentation.</p><p>You should provide justification if you do not envisage open, public access. A case can be made for charging for or otherwise limiting access, but the default expectation is that access will be open. The Technical Reviewer will be looking for realistic commitments to sustaining public access in line with affordability and the longer-term value of the digital output.</p><p>You must consider any institutional support needed in order to carry out these plans, if not covered under Section 3, as well as the cost of keeping the digital output publicly available in the future, including issues relating to maintenance, infrastructure and upgrade (such as the need to modify aspects of a web interface or software application in order to account for changes in the technological environment). In order to minimise sustainability costs, it is generally useful that the expertise involved in the development of your project is supported by expertise in your own or a partner institution.</p><p>A sustainability plan does not necessarily mean a requirement to generate income or prevent resources from being freely available. Rather it is a requirement to consider the direct costs and expertise of maintaining digital outputs for continued access. Some applicants might be able to demonstrate that there will be no significant sustainability problems with their digital output; in some cases the university’s computing services or library might provide a firm commitment to sustaining the resource for a specified period; others might see the benefit of Open Source community development models. You should provide reassurances of sustainability which are proportionate to the envisaged longer-term value of the digital outputs for the research community.</p><p>When completing this section, you should consider the potential impact of the data on research in your field (if research in the discipline will be improved through the creation of the digital output, how will it be affected if the resource then disappears?), and make the necessary connections with your Impact Plan. You must factor in the effects of any IP, copyright and ethical issues during the period in which the digital output will be publicly accessible, connecting what you say with the relevant part of your Case for Support.</p><p>You must identify whether or not you envisage the academic content (as distinct from the technology) of the digital output being extended or updated beyond the period of funding, addressing the following issues: how this will be done, by who and at what cost. You will need to show how the cost of this will be sustained after the period of funding ends.</p>",
    # themes: ["Method For Data Sharing", "Resourcing"]
  # }
# }

# questions.each do |q, details|
  # question = Question.new
  # question.text = details[:text]
  # question.number = details[:number]
  # question.guidance = details[:guidance]
  # question.section = Section.find_by_title(details[:section])
  # details[:themes].each do |theme|
    # question.themes << Theme.find_by_title(theme)
  # end
  # question.save!
# end

#suggested_answers


#formatting.each do |org, settings|
#  template = Dmptemplate.find_by_title("#{org} Template")
#  template.settings(:export).formatting = settings
#  template.save!
#end
