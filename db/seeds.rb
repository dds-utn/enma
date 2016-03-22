# Three courses. 15 groups per course.

courses = Course.create([
  { code: 'mn', description: 'Miércoles Noche', teacher: 'Fernando Dodino', code_id: 'K3052' },
  { code: 'jm', description: 'Jueves Mañana', teacher: 'Juan Zaffaroni', code_id: 'K3001' },
  { code: 'vn', description: 'Viernes Noche', teacher: 'Franco Bulgarelli', code_id: 'K3053' }
])


15.times{ |n| Group.create(:course => Course.first, :code => ((n+1) < 10 ? '0' + (n+1).to_s : (n+1).to_s)) }
15.times{ |n| Group.create(:course => Course.second, :code => ((n+1) < 10 ? '0' + (n+1).to_s : (n+1).to_s)) }
15.times{ |n| Group.create(:course => Course.third, :code => ((n+1) < 10 ? '0' + (n+1).to_s : (n+1).to_s)) }
15.times{ |n| Group.create(:course => Course.fourth, :code => ((n+1) < 10 ? '0' + (n+1).to_s : (n+1).to_s)) }
