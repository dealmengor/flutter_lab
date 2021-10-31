listSort(ages) {
  ages.sort();
  var first = ages[0];
  var last = ages.last;
  return [first, last];
}

listAvg(ages) {
  var sum = 0;
  ages.forEach((e) => sum += e as int);
  var avg = sum / ages.length;
  return avg;
}

void main() {
  var ages = [33, 15, 27, 40, 22];
  var values = listSort(ages);
  var first = values[0];
  var last = values[1];
  var avg = listAvg(ages);

  print("La edad menor es: $first");
  print("La edad mayor es: $last");
  print("La edad promedio es: $avg");
  print("¡Un saludo desde Panamá 🇵🇦!");
}
