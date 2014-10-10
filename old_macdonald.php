<?php

# Old MacDonald in PHP. Similar to Perl, but easier to make errors

$name = 'Old MacDonald';

$farm_animals =array('ducks', 'cows', 'pigs');

$drinks = array('beer', 'scotch', 'bourbon');

$workplaces = array('farm' => $farm_animals, 'bar' => $drinks);

$workplace = array_rand( $workplaces );

# sing it with me
echo "$name had a $workplace\n\n";

sleep(3);

$index = array_rand($workplaces[$workplace]);
$things = $workplaces[$workplace][$index];

echo "And on this $workplace he had some $things, E-I-E-I-O.\n\n";

sleep(3);

$animal = $farm_animals[array_rand($farm_animals)];
$drink = $drinks[array_rand($drinks)];

echo "Oh no, the $animal drank all of the $drink!\n\n";

?>