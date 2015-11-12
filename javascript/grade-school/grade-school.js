module.exports = function() {
    'use strict';
    var roster = {};
    var addStudent = function(name, grade) {
        if (typeof roster[grade] === 'undefined') {
            roster[grade] = [];
        }
        roster[grade].push(name);
        roster[grade] = getGrade(grade);
    };
    var getGrade = function(grade) {
        return (roster[grade] || []).sort();
    };
    var getRoster = function() {
        return roster;
    }
    return {
        roster : getRoster,
        add    : addStudent,
        grade  : getGrade
    };
};
