group = Basechurch::Group.create(name: 'English Service')
user = Basechurch::User.create(email: 'test@example.com', password: 'password')
bulletin = Basechurch::Bulletin.create(published_at: 1.month.ago,
                                       group: group,
                                       name: 'Sunday Service',
                                       description: 'This is a service bulletin.',
                                       service_order: " - ## Call to Worship\n - ## Praise & Worship Edwin's Team\n - ## Announcements\n - ## Offering\n - ## Sermon \"Our Father\" by Pastor Ryan Lee (Matthew 6:9)\n - ## Doxology\n - ## Benediction")
post = Basechurch::Post.create(author: user,
                               group: group,
                               title: 'This is a title',
                               content: 'This is my post content',
                               published_at: DateTime.now)
Basechurch::Announcement.create(post: post,
                                bulletin: bulletin,
                                description: '**Welcome** friends and visitors. We invite you to make MCAC your spiritual home. Please let us know how we can be of help to you.',
                                position: 1)
Basechurch::Announcement.create(post: post,
                                bulletin: bulletin,
                                description: 'The 2015 Church theme is **"Heaven Bound."** "Therefore, since we are surrounded by such a great cloud of witnesses, let us throw off everything that hinders and the sin that so easily entangles, and let us run with perseverance the race marked out for us. Let us fix our eyes on Jesus..." (Hebrews 12:1-2)',
                                position: 2)
Basechurch::Announcement.create(post: post,
                                bulletin: bulletin,
                                description: 'At last week\'s **Annual Membership Meeting**, we accepted the 2014 Ministry Reports and passed 2015 Financial Budget. The General Fund budget is $518,195 and the Mission Fund is $111,500. Weekly budget is $12,109.52 (an increase of 6.56%). Continue to remember and support church ministries.',
                                position: 3)
