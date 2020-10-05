Resources
colourData
  ^ Dictionary new
    at: 'gleam_color' put: '#1b1b1b';
    at: 'game_id' put: 1;
    at: 'url' put: 'https://api.boundlexx.app/api/v1/colors/1/';
    at: 'base_color' put: '#1b1b1b';
    at: 'blocks_url' put: 'https://api.boundlexx.app/api/v1/colors/1/blocks/';
    at: 'localization'
      put:
        (Array new
            add:
                (Dictionary new
                    at: 'name' put: 'Noir';
                    at: 'lang' put: 'french';
                    yourself);
            add:
                (Dictionary new
                    at: 'name' put: 'Schwarz';
                    at: 'lang' put: 'german';
                    yourself);
            add:
                (Dictionary new
                    at: 'name' put: 'Nero';
                    at: 'lang' put: 'italian';
                    yourself);
            add:
                (Dictionary new
                    at: 'name' put: 'Negro';
                    at: 'lang' put: 'spanish';
                    yourself);
            add:
                (Dictionary new
                    at: 'name' put: 'Black';
                    at: 'lang' put: 'english';
                    yourself);
            yourself);
    yourself