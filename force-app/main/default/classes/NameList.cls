public with sharing class NameList {
    public static List<String> getNamesStartingWith(List<String> names, String startChar) {
        List<String> filteredNames = new List<String>();
        for (String name: names)
            if (name != null && name.startsWith(startChar)) {
                filteredNames.add(name);
        }
        return filteredNames;
    }
}