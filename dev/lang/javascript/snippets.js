//
// The rules of creating an "object" using a function
// Reference:  https://martinfowler.com/bliki/FunctionAsObject.html
//

function Person(name) {
   let birthday;

   return {
      name: () => name,
      birthday: () => birthday,

      setName: (aString) => name = aString,
      setBirthday: (aLocalDate) => birthday = aLocalDate,

      age: age,
      canTrust: canTrust,
   };

   function age() {
      return birthday.until(clock.today(), ChronoUnit.YEARS);
   }

   function canTrust() {
      return age() <= 30;
   }
}
