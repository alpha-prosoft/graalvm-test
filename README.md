# your-lambda

## Usage
```
./build.sh
```


## GraalVM version
```
java 21.0.1 2023-10-17
Java(TM) SE Runtime Environment Oracle GraalVM 21.0.1+12.1 (build 21.0.1+12-jvmci-23.1-b19)
Java HotSpot(TM) 64-Bit Server VM Oracle GraalVM 21.0.1+12.1 (build 21.0.1+12-jvmci-23.1-b19, mixed mode, sharing)
```

## Compliation error

```
Error: Class initialization of clojure.lang.Compiler failed. Use the option 

    '--initialize-at-run-time=clojure.lang.Compiler'

 to explicitly request initialization of this class at run time.
com.oracle.svm.core.util.UserError$UserException: Class initialization of clojure.lang.Compiler failed. Use the option 

    '--initialize-at-run-time=clojure.lang.Compiler'

 to explicitly request initialization of this class at run time.
	at org.graalvm.nativeimage.builder/com.oracle.svm.core.util.UserError.abort(UserError.java:85)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.ensureClassInitialized(ClassInitializationSupport.java:195)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ProvenSafeClassInitializationSupport.computeInitKindAndMaybeInitializeClass(ProvenSafeClassInitializationSupport.java:348)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ProvenSafeClassInitializationSupport.computeInitKindAndMaybeInitializeClass(ProvenSafeClassInitializationSupport.java:76)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.maybeInitializeAtBuildTime(ClassInitializationSupport.java:161)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.maybeInitializeAtBuildTime(ClassInitializationSupport.java:150)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.SVMHost.isInitialized(SVMHost.java:318)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisType.isInitialized(AnalysisType.java:911)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.BytecodeParser.maybeEagerlyInitialize(BytecodeParser.java:4444)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.BytecodeParser.genInvokeStatic(BytecodeParser.java:1684)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.BytecodeParser.genInvokeStatic(BytecodeParser.java:1677)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.BytecodeParser.processBytecode(BytecodeParser.java:5441)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.BytecodeParser.iterateBytecodesForBlock(BytecodeParser.java:3431)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase$SharedBytecodeParser.iterateBytecodesForBlock(SharedGraphBuilderPhase.java:741)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.BytecodeParser.handleBytecodeBlock(BytecodeParser.java:3391)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.BytecodeParser.processBlock(BytecodeParser.java:3233)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.BytecodeParser.build(BytecodeParser.java:1137)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase$SharedBytecodeParser.build(SharedGraphBuilderPhase.java:161)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.BytecodeParser.buildRootMethod(BytecodeParser.java:1029)
	at jdk.internal.vm.compiler/org.graalvm.compiler.java.GraphBuilderPhase$Instance.run(GraphBuilderPhase.java:101)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase.run(SharedGraphBuilderPhase.java:115)
	at jdk.internal.vm.compiler/org.graalvm.compiler.phases.Phase.run(Phase.java:49)
	at jdk.internal.vm.compiler/org.graalvm.compiler.phases.BasePhase.apply(BasePhase.java:434)
	at jdk.internal.vm.compiler/org.graalvm.compiler.phases.Phase.apply(Phase.java:42)
	at jdk.internal.vm.compiler/org.graalvm.compiler.phases.Phase.apply(Phase.java:38)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.AnalysisParsedGraph.parseBytecode(AnalysisParsedGraph.java:146)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.parseGraph(AnalysisMethod.java:895)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.ensureGraphParsedHelper(AnalysisMethod.java:860)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.ensureGraphParsed(AnalysisMethod.java:843)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysisGraphDecoder.lookupEncodedGraph(InlineBeforeAnalysisGraphDecoder.java:175)
	at jdk.internal.vm.compiler/org.graalvm.compiler.replacements.PEGraphDecoder.doInline(PEGraphDecoder.java:1211)
	at jdk.internal.vm.compiler/org.graalvm.compiler.replacements.PEGraphDecoder.tryInline(PEGraphDecoder.java:1194)
	at jdk.internal.vm.compiler/org.graalvm.compiler.replacements.PEGraphDecoder.trySimplifyInvoke(PEGraphDecoder.java:1049)
	at jdk.internal.vm.compiler/org.graalvm.compiler.replacements.PEGraphDecoder.handleInvokeWithCallTarget(PEGraphDecoder.java:1001)
	at jdk.internal.vm.compiler/org.graalvm.compiler.replacements.PEGraphDecoder.handleInvoke(PEGraphDecoder.java:987)
	at jdk.internal.vm.compiler/org.graalvm.compiler.nodes.GraphDecoder.processNextNode(GraphDecoder.java:921)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysisGraphDecoder.processNextNode(InlineBeforeAnalysisGraphDecoder.java:344)
	at jdk.internal.vm.compiler/org.graalvm.compiler.nodes.GraphDecoder.decode(GraphDecoder.java:650)
	at jdk.internal.vm.compiler/org.graalvm.compiler.replacements.PEGraphDecoder.decode(PEGraphDecoder.java:892)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysis.decodeGraph(InlineBeforeAnalysis.java:76)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlowBuilder.parse(MethodTypeFlowBuilder.java:195)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlowBuilder.apply(MethodTypeFlowBuilder.java:621)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.createFlowsGraph(MethodTypeFlow.java:167)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.ensureFlowsGraphCreated(MethodTypeFlow.java:153)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.getOrCreateMethodFlowsGraphInfo(MethodTypeFlow.java:111)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.typestate.DefaultStaticInvokeTypeFlow.lambda$update$0(DefaultStaticInvokeTypeFlow.java:75)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.LightImmutableCollection.forEach(LightImmutableCollection.java:90)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.typestate.DefaultStaticInvokeTypeFlow.update(DefaultStaticInvokeTypeFlow.java:74)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.PointsToAnalysis$1.run(PointsToAnalysis.java:491)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.CompletionExecutor.executeCommand(CompletionExecutor.java:187)
	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.CompletionExecutor.lambda$executeService$0(CompletionExecutor.java:171)
	at java.base/java.util.concurrent.ForkJoinTask$RunnableExecuteAction.exec(ForkJoinTask.java:1423)
	at java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:387)
	at java.base/java.util.concurrent.ForkJoinPool$WorkQueue.topLevelExec(ForkJoinPool.java:1312)
	at java.base/java.util.concurrent.ForkJoinPool.scan(ForkJoinPool.java:1843)
	at java.base/java.util.concurrent.ForkJoinPool.runWorker(ForkJoinPool.java:1808)
	at java.base/java.util.concurrent.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:188)
Caused by: java.lang.ExceptionInInitializerError
	at clojure.lang.Compiler.<clinit>(Compiler.java:48)
	at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized0(Native Method)
	at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized(Unsafe.java:1160)
	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.ensureClassInitialized(ClassInitializationSupport.java:177)
	... 55 more
Caused by: java.lang.NullPointerException: Cannot invoke "clojure.lang.Var.isBound()" because "clojure.lang.Compiler.LOADER" is null
	at clojure.lang.RT.baseLoader(RT.java:2177)
	at clojure.lang.RT.load(RT.java:432)
	at clojure.lang.RT.load(RT.java:424)
	at clojure.lang.RT.<clinit>(RT.java:338)
	... 59 more
```
