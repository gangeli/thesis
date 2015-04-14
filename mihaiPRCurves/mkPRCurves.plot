set terminal pdf dashed

set xlabel "Recall"
set ylabel "Precision"
set xrange [0.0:0.33]
set yrange [0.17:0.73]

set output 'compareTo2012.pdf'
plot \
  "miml.curve" using 5:3 title 'MIML-RE'                     with linespoints lt 1 pt 0 linecolor rgb "red", \
  "miml-2012.curve" using 5:3 title 'Surdeanu et al. (2012)' with linespoints lt 3 pt 0 linecolor rgb "blue",\
  "distsup.curve" using 5:3 title 'Mintz++'                  with linespoints lt 4 pt 0 linecolor rgb "black";

set output 'compareTo2012_0.pdf'
plot \
  "distsup.curve" using 5:3 title 'Distant Supervision'                  with linespoints lt 4 pt 0 linecolor rgb "black";

set output 'compareTo2012_1.pdf'
plot \
  "miml-2012.curve" using 5:3 title 'Surdeanu et al. (2012)' with linespoints lt 3 pt 0 linecolor rgb "blue",\
  "distsup.curve" using 5:3 title 'Distant Supervision'                  with linespoints lt 4 pt 0 linecolor rgb "black";

set output 'compareTo2012_2.pdf'
plot \
  "miml.curve" using 5:3 title 'MIML-RE (our baseline)'                     with linespoints lt 1 pt 0 linecolor rgb "red", \
  "miml-2012.curve" using 5:3 title 'Surdeanu et al. (2012)' with linespoints lt 3 pt 0 linecolor rgb "blue",\
  "distsup.curve" using 5:3 title 'Distant Supervision'                  with linespoints lt 4 pt 0 linecolor rgb "black";

set output 'evaluateCriteriaDistsup.pdf'
plot \
  "miml-distsup-sampleKL.curve" using 5:3 title 'Sample JS' with linespoints lt 4 pt 0 linecolor rgb "black",\
  "miml-distsup-highKL.curve"   using 5:3 title 'High JS'   with linespoints lt 3 pt 0 linecolor rgb "green",\
  "miml-distsup-uniform.curve"  using 5:3 title 'Uniform'   with linespoints lt 2 pt 0 linecolor rgb "blue",\
  "miml.curve"                  using 5:3 title 'MIML-RE'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'evaluateCriteriaDistsup_0.pdf'
plot \
  "miml.curve"                  using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'evaluateCriteriaDistsup_1.pdf'
plot \
  "miml-distsup-uniform.curve"  using 5:3 title 'Uniform'   with linespoints lt 2 pt 0 linecolor rgb "blue",\
  "miml.curve"                  using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'evaluateCriteriaDistsup_2.pdf'
plot \
  "miml-distsup-highKL.curve"   using 5:3 title 'High JS'   with linespoints lt 3 pt 0 linecolor rgb "green",\
  "miml-distsup-uniform.curve"  using 5:3 title 'Uniform'   with linespoints lt 2 pt 0 linecolor rgb "blue",\
  "miml.curve"                  using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'evaluateCriteriaDistsup_3.pdf'
plot \
  "miml-distsup-sampleKL.curve" using 5:3 title 'Sample JS' with linespoints lt 4 pt 0 linecolor rgb "black",\
  "miml-distsup-highKL.curve"   using 5:3 title 'High JS'   with linespoints lt 3 pt 0 linecolor rgb "green",\
  "miml-distsup-uniform.curve"  using 5:3 title 'Uniform'   with linespoints lt 2 pt 0 linecolor rgb "blue",\
  "miml.curve"                  using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'evaluateCriteriaSup.pdf'
plot \
  "miml-supervised-sampleKL.curve" using 5:3 title 'Sample JS' with linespoints lt 4 pt 0 linecolor rgb "black",\
  "miml-supervised-highKL.curve"   using 5:3 title 'High JS'   with linespoints lt 3 pt 0 linecolor rgb "green",\
  "miml-supervised-uniform.curve"  using 5:3 title 'Uniform'   with linespoints lt 2 pt 0 linecolor rgb "blue",\
  "miml.curve"                     using 5:3 title 'MIML-RE'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'evaluateCriteriaSup_0.pdf'
plot \
  "miml.curve"                     using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'evaluateCriteriaSup_1.pdf'
plot \
  "miml-supervised-uniform.curve"  using 5:3 title 'Uniform'   with linespoints lt 2 pt 0 linecolor rgb "blue",\
  "miml.curve"                     using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'evaluateCriteriaSup_2.pdf'
plot \
  "miml-supervised-highKL.curve"   using 5:3 title 'High JS'   with linespoints lt 3 pt 0 linecolor rgb "green",\
  "miml-supervised-uniform.curve"  using 5:3 title 'Uniform'   with linespoints lt 2 pt 0 linecolor rgb "blue",\
  "miml.curve"                     using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'evaluateCriteriaSup_3.pdf'
plot \
  "miml-supervised-sampleKL.curve" using 5:3 title 'Sample JS' with linespoints lt 4 pt 0 linecolor rgb "black",\
  "miml-supervised-highKL.curve"   using 5:3 title 'High JS'   with linespoints lt 3 pt 0 linecolor rgb "green",\
  "miml-supervised-uniform.curve"  using 5:3 title 'Uniform'   with linespoints lt 2 pt 0 linecolor rgb "blue",\
  "miml.curve"                     using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'showNetImprovement.pdf'
plot \
  "miml-supervised-sampleKL.curve" using 5:3 title 'Sample JS' with linespoints lt 4 pt 0 linecolor rgb "black",\
  "miml.curve"                     using 5:3 title 'MIML-RE'   with linespoints lt 1 pt 0 linecolor rgb "red",\
  "distsup.curve"                  using 5:3 title 'Mintz++'   with linespoints lt 4 pt 0 linecolor rgb "gray";

set output 'showNetImprovement_0.pdf'
plot \
  "miml-supervised-sampleKL.curve" using 5:3 title 'Sample JS' with linespoints lt 4 pt 0 linecolor rgb "black",\
  "miml.curve"                     using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red";

set output 'showNetImprovement_1.pdf'
plot \
  "miml-supervised-sampleKL.curve" using 5:3 title 'Sample JS' with linespoints lt 4 pt 0 linecolor rgb "black",\
  "miml.curve"                     using 5:3 title 'MIML-RE (our baseline)'   with linespoints lt 1 pt 0 linecolor rgb "red",\
  "distsup.curve"                  using 5:3 title 'Distant Supervision'   with linespoints lt 4 pt 0 linecolor rgb "gray";

set output 'compareToOthers.pdf'
plot \
  "miml-supervised-sampleKL.curve" using 5:3 title 'Sample JS' with linespoints lt 4 pt 0 linecolor rgb "black",\
  "pershina-acl2014-ds.curve"   using 1:2 title 'Pershina et al. (2014)'   with linespoints lt 3 pt 0 linecolor rgb "blue",\
  "miml.curve"                  using 5:3 title 'MIML-RE'   with linespoints lt 1 pt 0 linecolor rgb "red";
