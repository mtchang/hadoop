# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

# HADOOP
export HADOOP_PREFIX=/home/hadoop/hadoop
export HADOOP_HOME=$HADOOP_PREFIX
export HADOOP_COMMON_HOME=$HADOOP_PREFIX
export HADOOP_CONF_DIR=$HADOOP_PREFIX/etc/hadoop
export HADOOP_HDFS_HOME=$HADOOP_PREFIX
export HADOOP_MAPRED_HOME=$HADOOP_PREFIX
export HADOOP_YARN_HOME=$HADOOP_PREFIX
export HADOOP_NAMENODE_OPTS="-XX:+UseParallelGC -Xmx1g"

# mapreduce app
export HADOOP_CLASSPATH=${JAVA_HOME}/lib/tools.jar

# R-HADOOP
export HADOOP_CMD=$HADOOP_PREFIX/bin/hadoop
export HADOOP_STREAMING="$HADOOP_PREFIX/share/hadoop/tools/lib/hadoop-streaming-2.7.1.jar"

# HIVE
export HIVE_HOME=/home/hadoop/apache-hive

# ANT
export ANT_LIB=/usr/java/ant/lib
export ANT_HOME=/usr/java/ant/

# Maven
export MAVEN_HOME=/usr/java/maven/
export MAVEN_LIB=/usr/java/maven/lib

#JAVA
export JAVA_HOME=/usr/java/latest
export JRE_HOME=/usr/java/latest/jre

# PIG
export PIG_HOME=/home/hadoop/apache-pig
export PATH=$PATH:$PIG_HOME/bin:$HIVE_HOME/bin:$HADOOP_PREFIX/sbin:$HADOOP_PREFIX/bin:$JAVA_HOME/bin:$JRE_HOME/bin:$ANT_HOME/bin:$MAVEN_HOME/bin
export PATH=$PATH:$HADOOP_PREFIX/sbin:$HADOOP_PREFIX/bin:$JAVA_HOME/bin:$JRE_HOME/bin