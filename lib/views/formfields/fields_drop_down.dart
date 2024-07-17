import 'package:flutter/material.dart';
import 'package:widgets_flutter/models/form_model.dart';
import 'package:widgets_flutter/views/formfields/form_fields.dart';

class DropDownFields extends StatefulWidget {
  const DropDownFields({super.key});

  @override
  State<DropDownFields> createState() => _DropDownFieldsState();
}

class _DropDownFieldsState extends State<DropDownFields> {
  String _selectedOption = 'Web Development';
  final List<FormFieldModel> webDevelopment = [
    FormFieldModel(
      title: 'Enter the number of pages in the website:',
      keyboardType: 'String',
      hintText: 'Number of pages',
    ),
    FormFieldModel(
      title: 'What kind of website do you want?',
      keyboardType: 'radio button',
      options: ['static', 'dynamic'],
    ),
    FormFieldModel(
      title: 'What do you prefer?',
      keyboardType: 'radio button',
      options: ['full stack website', 'backend/server', 'frontend'],
    ),
    FormFieldModel(
      title: 'Feature of website:',
      keyboardType: 'String',
      hintText: 'eg: maps implemented, want animations etc',
    ),
    FormFieldModel(
      title: 'Enter technologies to be used in the website:',
      keyboardType: 'String',
      hintText: 'example: Bootstrap',
    ),
    FormFieldModel(
      title: 'Enter database to be used in the website:',
      keyboardType: 'String',
      hintText: 'example: Mongodb',
    ),
  ];
  final List<FormFieldModel> appDevelopment = [
    FormFieldModel(
      title: 'OS to be used:',
      keyboardType: 'radio button',
      options: ['IOS', 'Android', 'Cross platform'],
    ),
    FormFieldModel(
      title: 'Language to be used',
      keyboardType: 'radio button',
      options: ['ReactJS', 'Flutter', 'Java', 'Kotlin'],
    ),
    FormFieldModel(
      title: 'What work do you prefer?',
      keyboardType: 'radio button',
      options: ['full stack website', 'backend/server', 'frontend'],
    ),
    FormFieldModel(
      title: 'Number of screens in your website',
      keyboardType: 'number',
      hintText: 'number of screens',
    ),
    FormFieldModel(
      title: 'Enter database to be used in the website:',
      keyboardType: 'String',
      hintText: 'example: Mongodb',
    ),
    FormFieldModel(
      title: 'Do you want to make app live?',
      keyboardType: 'radio button',
      options: ['Yes', 'No'],
    ),
  ];
  final List<FormFieldModel> logoDesign = [
    FormFieldModel(
      title: 'Enter the color of logo',
      keyboardType: 'String',
      hintText: 'eg: red and black',
    ),
    FormFieldModel(
      title: 'Element which should be included in logo',
      keyboardType: 'String',
      hintText: 'example: car',
    ),
    FormFieldModel(
      title: 'which type of file do you want',
      keyboardType: 'radio button',
      options: ['png', 'jpg', 'svg', 'all'],
    ),
  ];
  final List<FormFieldModel> videoEditing = [
    FormFieldModel(
      title: 'which type of video do you want?',
      keyboardType: 'radio button',
      options: ['AMV', '2D/3D animation', 'Documentary', 'screencast'],
    ),
    FormFieldModel(
      title: 'Any speccific tone or song in mind',
      keyboardType: 'String',
      hintText: 'name of song or tone',
    ),
    FormFieldModel(
      title: 'How long should be the video',
      keyboardType: 'String',
      hintText: 'in seconds',
    ),
  ];
  final List<FormFieldModel> googleAds = [
    FormFieldModel(
      title: 'Which type of Google Ads are you interested in?',
      keyboardType: 'radio button',
      options: ['Search ads', 'Display ads', 'Video ads', 'Shopping ads'],
    ),
    FormFieldModel(
      title: 'Primary business goal with google ads',
      keyboardType: 'String',
      hintText: 'sales',
    ),
    FormFieldModel(
      title: ' Have a preference for specific ad formats  ',
      keyboardType: 'String',
      hintText: 'text/video/image',
    ),
  ];
  final List<FormFieldModel> metaAds = [
    FormFieldModel(
      title: 'What is the primary goal?  ',
      keyboardType: 'radio button',
      options: [
        'Brand awareness',
        'Lead generation',
        'Sales/Conversions',
        'App installs',
        'Event promotion'
      ],
    ),
    FormFieldModel(
      title: 'What type of ad format are you interested in? ',
      keyboardType: 'radio button',
      options: ['Sinle image', 'Video', 'Carousel', 'Slideshow', 'Collection'],
    ),
    FormFieldModel(
      title: 'Where would you like your ads to be displayed?',
      keyboardType: 'radio button',
      options: [
        'Facebook',
        'Instagram feed',
        'Instagram Stories',
        'Messanger',
        'Audience network'
      ],
    ),
    FormFieldModel(
      title: 'Have a preference for ad placement strategy?  ',
      keyboardType: 'radio button',
      options: ['Automatic placements', 'Manual placements'],
    ),
  ];
  final List<FormFieldModel> seo = [
    FormFieldModel(
      title: 'The services/products you Need?',
      keyboardType: 'String',
      hintText: 'your answer',
    ),
    FormFieldModel(
      title: 'Primary business goal with google ads',
      keyboardType: 'String',
      hintText: 'sales',
    ),
    FormFieldModel(
      title: ' Have any specific keywords',
      keyboardType: 'String',
      hintText: 'your answer',
    ),
    FormFieldModel(
      title: ' Need website to built on a specific platform or CMS ?',
      keyboardType: 'String',
      hintText: 'your answer',
    ),
  ];
  final List<FormFieldModel> contentWriting = [
    FormFieldModel(
      title: 'What type of content are you looking for?',
      keyboardType: 'radio button',
      options: [
        'Articles',
        'Blog posts',
        'Social media content',
        'Website copy',
        'Email newsletters'
      ],
    ),
    FormFieldModel(
      title: 'What style do you prefer?',
      keyboardType: 'radio button',
      options: [
        'Formal',
        'Informal',
        'Conversational',
        'Professional',
        'Humorous'
      ],
    ),
    FormFieldModel(
      title: 'How frequently do you need new content? ',
      keyboardType: 'radio button',
      options: ['Daily', 'Weekly', 'Monthly', 'One-time project'],
    ),
    FormFieldModel(
      title: ' What format do you prefer?  ',
      keyboardType: 'radio button',
      options: ['Word document', 'Google Docs', 'HTML', 'Directly into a CMS'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: _selectedOption,
          onChanged: (String? newValue) {
            setState(() {
              _selectedOption = newValue!;
            });
          },
          items: <String>[
            'Web Development',
            'App Development',
            'Logo Design',
            'Video Editing',
            'Google Ads',
            'Meta Ads',
            'SEO',
            'Content Writing',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_selectedOption == 'Web Development') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormFields(formFields: webDevelopment),
              ),
            );
          } else if (_selectedOption == 'App Development') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormFields(formFields: appDevelopment),
              ),
            );
          } else if (_selectedOption == 'Logo Design') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormFields(formFields: logoDesign),
              ),
            );
          } else if (_selectedOption == 'Video Editing') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormFields(formFields: videoEditing),
              ),
            );
          } else if (_selectedOption == 'Google Ads') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormFields(formFields: googleAds),
              ),
            );
          } else if (_selectedOption == 'Meta Ads') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormFields(formFields: metaAds),
              ),
            );
          } else if (_selectedOption == 'SEO') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormFields(formFields: seo),
              ),
            );
          } else if (_selectedOption == 'Content Writing') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FormFields(formFields: contentWriting),
              ),
            );
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
