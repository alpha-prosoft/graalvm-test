# your-lambda

## Usage
```
./compile.sh && ./run.sh
```


## GraalVM version
```
 Java version: 22+36, vendor version: Oracle GraalVM 22+36.1
 Graal compiler: optimization level: 2, target machine: x86-64-v3, PGO: ML-inferred
 C compiler: gcc (linux, x86_64, 11.4.0)
 Garbage collector: G1 GC (max heap size: 25.0% of RAM)
```

## Compliation error

```
Bulding!
Building uberjar
Bulding jar:
{:main nativetest.main,
 :group-id com.alpha-prosoft.test,
 :artifact-id nativetest,
 :version "1.0",
 :out target}
Building uberjar: com.alpha-prosoft.test/nativetest:1.0 into target
Compiling: ["src" "resources"]
Skipping paths: resources
Uberjar params
{:main nativetest.main,
 :group-id com.alpha-prosoft.test,
 :artifact-id nativetest,
 :version "1.0",
 :out target}
Compiling: ["src" "resources"]
========================================================================================================================
GraalVM Native Image: Generating 'lambda_function' (executable)...
========================================================================================================================
[1/8] Initializing...                                                                                    (2.8s @ 0.09GB)
 Java version: 22+36, vendor version: Oracle GraalVM 22+36.1
 Graal compiler: optimization level: 2, target machine: x86-64-v3, PGO: ML-inferred
 C compiler: gcc (linux, x86_64, 11.4.0)
 Garbage collector: G1 GC (max heap size: 25.0% of RAM)
 1 user-specific feature(s):
 - com.oracle.svm.thirdparty.gson.GsonFeature
------------------------------------------------------------------------------------------------------------------------
 5 experimental option(s) unlocked:
 - '-H:NumberOfThreads' (alternative API option(s): --parallelism=16; origin(s): command line)
 - '-H:ReflectionConfigurationFiles': Use a reflect-config.json in your META-INF/native-image/<groupID>/<artifactID> directory instead. (origin(s): command line)
 - '-H:Log' (origin(s): command line)
 - '-H:IncludeResources': Use a resource-config.json in your META-INF/native-image/<groupID>/<artifactID> directory instead. (origin(s): command line, command line, command line, command line, command line)
 - '-H:TraceClassInitialization' (alternative API option(s): --trace-class-initialization=true, --trace-class-initialization=clojure.lang.Compiler, --trace-class-initialization=clojure.lang.RT, --trace-class-initialization=java.security.SecureRandom, --trace-class-initialization=java.util.UUID$Holder, --trace-class-initialization=java.util.UUID; origin(s): command line)
------------------------------------------------------------------------------------------------------------------------
Build resources:
 - 21.33GB of memory (68.7% of 31.05GB system memory, set via '-Xmx24g')
 - 16 thread(s) (100.0% of 16 available processor(s), set via '--parallelism=16')
[Use -Djdk.graal.LogFile=<path> to redirect Graal log output to a file.]
[thread:41] scope: ForkJoinPool.commonPool-worker-2
  [thread:41] scope: ForkJoinPool.commonPool-worker-2.ClosedWorldAnalysis
  Context: StructuredGraph:8476{AnalysisMethod<ArityException.<init> -> HotSpotMethod<ArityException.<init>(int, String, Throwable)>, invoked: false, implInvoked: false, intrinsic: false, inlined: false>}
  Context: AnalysisMethod<ArityException.<init> -> HotSpotMethod<ArityException.<init>(int, String, Throwable)>, invoked: false, implInvoked: false, intrinsic: false, inlined: false>
    [thread:41] scope: ForkJoinPool.commonPool-worker-2.ClosedWorldAnalysis.AnalysisGraphBuilderPhase
    Exception raised in scope ForkJoinPool.commonPool-worker-2.ClosedWorldAnalysis.AnalysisGraphBuilderPhase: com.oracle.svm.core.util.UserError$UserException: Class initialization of clojure.lang.Compiler failed. Use the option 
    
        '--initialize-at-run-time=clojure.lang.Compiler'
    
     to explicitly request initialization of this class at run time.
    	at org.graalvm.nativeimage.builder/com.oracle.svm.core.util.UserError.abort(UserError.java:97)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.ensureClassInitialized(ClassInitializationSupport.java:195)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.AllowAllHostedUsagesClassInitializationSupport.computeInitKindAndMaybeInitializeClass(AllowAllHostedUsagesClassInitializationSupport.java:182)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.AllowAllHostedUsagesClassInitializationSupport.computeInitKindAndMaybeInitializeClass(AllowAllHostedUsagesClassInitializationSupport.java:120)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.maybeInitializeAtBuildTime(ClassInitializationSupport.java:161)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.maybeInitializeAtBuildTime(ClassInitializationSupport.java:150)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.SVMHost.isInitialized(SVMHost.java:319)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisType.isInitialized(AnalysisType.java:952)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.maybeEagerlyInitialize(BytecodeParser.java:4475)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.genInvokeStatic(BytecodeParser.java:1708)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.genInvokeStatic(BytecodeParser.java:1701)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.processBytecode(BytecodeParser.java:5468)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.iterateBytecodesForBlock(BytecodeParser.java:3473)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase$SharedBytecodeParser.iterateBytecodesForBlock(SharedGraphBuilderPhase.java:790)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.handleBytecodeBlock(BytecodeParser.java:3433)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.processBlock(BytecodeParser.java:3275)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.build(BytecodeParser.java:1136)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase$SharedBytecodeParser.build(SharedGraphBuilderPhase.java:202)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.buildRootMethod(BytecodeParser.java:1028)
    	at jdk.graal.compiler/jdk.graal.compiler.java.GraphBuilderPhase$Instance.run(GraphBuilderPhase.java:102)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase.run(SharedGraphBuilderPhase.java:154)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.Phase.run(Phase.java:49)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.BasePhase.apply(BasePhase.java:435)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.Phase.apply(Phase.java:42)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.Phase.apply(Phase.java:38)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.AnalysisParsedGraph.parseBytecode(AnalysisParsedGraph.java:144)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.parseGraph(AnalysisMethod.java:888)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.ensureGraphParsedHelper(AnalysisMethod.java:853)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.ensureGraphParsed(AnalysisMethod.java:836)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysisGraphDecoder.lookupEncodedGraph(InlineBeforeAnalysisGraphDecoder.java:198)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.doInline(PEGraphDecoder.java:1215)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.tryInline(PEGraphDecoder.java:1198)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.trySimplifyInvoke(PEGraphDecoder.java:1053)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.handleInvokeWithCallTarget(PEGraphDecoder.java:1005)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.handleInvoke(PEGraphDecoder.java:991)
    	at jdk.graal.compiler/jdk.graal.compiler.nodes.GraphDecoder.processNextNode(GraphDecoder.java:930)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysisGraphDecoder.processNextNode(InlineBeforeAnalysisGraphDecoder.java:377)
    	at jdk.graal.compiler/jdk.graal.compiler.nodes.GraphDecoder.decode(GraphDecoder.java:658)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.decode(PEGraphDecoder.java:895)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysis.decodeGraph(InlineBeforeAnalysis.java:73)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlowBuilder.parse(MethodTypeFlowBuilder.java:198)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlowBuilder.apply(MethodTypeFlowBuilder.java:608)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.createFlowsGraph(MethodTypeFlow.java:167)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.ensureFlowsGraphCreated(MethodTypeFlow.java:152)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.getOrCreateMethodFlowsGraphInfo(MethodTypeFlow.java:110)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.typestate.DefaultStaticInvokeTypeFlow.lambda$update$0(DefaultStaticInvokeTypeFlow.java:75)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.LightImmutableCollection.forEach(LightImmutableCollection.java:90)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.typestate.DefaultStaticInvokeTypeFlow.update(DefaultStaticInvokeTypeFlow.java:74)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.PointsToAnalysis$1.run(PointsToAnalysis.java:538)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.CompletionExecutor.executeCommand(CompletionExecutor.java:169)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.CompletionExecutor.lambda$executeService$0(CompletionExecutor.java:154)
    	at java.base/java.util.concurrent.ForkJoinTask$RunnableExecuteAction.compute(ForkJoinTask.java:1726)
    	at java.base/java.util.concurrent.ForkJoinTask$RunnableExecuteAction.compute(ForkJoinTask.java:1717)
    	at java.base/java.util.concurrent.ForkJoinTask$InterruptibleTask.exec(ForkJoinTask.java:1641)
    	at java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:507)
    	at java.base/java.util.concurrent.ForkJoinPool$WorkQueue.topLevelExec(ForkJoinPool.java:1491)
    	at java.base/java.util.concurrent.ForkJoinPool.scan(ForkJoinPool.java:2073)
    	at java.base/java.util.concurrent.ForkJoinPool.runWorker(ForkJoinPool.java:2035)
    	at java.base/java.util.concurrent.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:187)
    Caused by: java.lang.ExceptionInInitializerError
    	at clojure.lang.Compiler.<clinit>(Compiler.java:48)
    	at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized0(Native Method)
    	at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized(Unsafe.java:1160)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.ensureClassInitialized(ClassInitializationSupport.java:177)
    	... 57 more
    Caused by: java.lang.NullPointerException: Cannot invoke "clojure.lang.Var.isBound()" because "clojure.lang.Compiler.LOADER" is null
    	at clojure.lang.RT.baseLoader(RT.java:2177)
    	at clojure.lang.RT.load(RT.java:432)
    	at clojure.lang.RT.load(RT.java:424)
    	at clojure.lang.RT.<clinit>(RT.java:338)
    	... 61 more
    
    Context obj com.oracle.svm.hosted.phases.AnalysisGraphBuilderPhase@763d8dbc
    Context obj StructuredGraph:8476{AnalysisMethod<ArityException.<init> -> HotSpotMethod<ArityException.<init>(int, String, Throwable)>, invoked: false, implInvoked: false, intrinsic: false, inlined: false>}
    Context obj AnalysisMethod<ArityException.<init> -> HotSpotMethod<ArityException.<init>(int, String, Throwable)>, invoked: false, implInvoked: false, intrinsic: false, inlined: false>
[thread:41] scope: ForkJoinPool.commonPool-worker-2
  [thread:41] scope: ForkJoinPool.commonPool-worker-2.InlineBeforeAnalysis
  Context: StructuredGraph:8467{AnalysisMethod<FactoryThrowMethodHolder.ArityException_constructor_a1d2547410e39e8bb77fe5edfece6a63a05dfd92 -> com.oracle.svm.hosted.code.FactoryMethod@7ac680c8, invoked: true, implInvoked: false, intrinsic: false, inlined: false>}
    [thread:41] scope: ForkJoinPool.commonPool-worker-2.InlineBeforeAnalysis.PEGraphDecode
    Context: StructuredGraph:8467{AnalysisMethod<FactoryThrowMethodHolder.ArityException_constructor_a1d2547410e39e8bb77fe5edfece6a63a05dfd92 -> com.oracle.svm.hosted.code.FactoryMethod@7ac680c8, invoked: true, implInvoked: false, intrinsic: false, inlined: false>}
    Exception raised in scope ForkJoinPool.commonPool-worker-2.InlineBeforeAnalysis.PEGraphDecode: com.oracle.svm.core.util.UserError$UserException: Class initialization of clojure.lang.Compiler failed. Use the option 
    
        '--initialize-at-run-time=clojure.lang.Compiler'
    
     to explicitly request initialization of this class at run time.
    	at org.graalvm.nativeimage.builder/com.oracle.svm.core.util.UserError.abort(UserError.java:97)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.ensureClassInitialized(ClassInitializationSupport.java:195)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.AllowAllHostedUsagesClassInitializationSupport.computeInitKindAndMaybeInitializeClass(AllowAllHostedUsagesClassInitializationSupport.java:182)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.AllowAllHostedUsagesClassInitializationSupport.computeInitKindAndMaybeInitializeClass(AllowAllHostedUsagesClassInitializationSupport.java:120)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.maybeInitializeAtBuildTime(ClassInitializationSupport.java:161)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.maybeInitializeAtBuildTime(ClassInitializationSupport.java:150)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.SVMHost.isInitialized(SVMHost.java:319)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisType.isInitialized(AnalysisType.java:952)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.maybeEagerlyInitialize(BytecodeParser.java:4475)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.genInvokeStatic(BytecodeParser.java:1708)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.genInvokeStatic(BytecodeParser.java:1701)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.processBytecode(BytecodeParser.java:5468)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.iterateBytecodesForBlock(BytecodeParser.java:3473)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase$SharedBytecodeParser.iterateBytecodesForBlock(SharedGraphBuilderPhase.java:790)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.handleBytecodeBlock(BytecodeParser.java:3433)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.processBlock(BytecodeParser.java:3275)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.build(BytecodeParser.java:1136)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase$SharedBytecodeParser.build(SharedGraphBuilderPhase.java:202)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.buildRootMethod(BytecodeParser.java:1028)
    	at jdk.graal.compiler/jdk.graal.compiler.java.GraphBuilderPhase$Instance.run(GraphBuilderPhase.java:102)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase.run(SharedGraphBuilderPhase.java:154)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.Phase.run(Phase.java:49)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.BasePhase.apply(BasePhase.java:435)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.Phase.apply(Phase.java:42)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.Phase.apply(Phase.java:38)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.AnalysisParsedGraph.parseBytecode(AnalysisParsedGraph.java:144)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.parseGraph(AnalysisMethod.java:888)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.ensureGraphParsedHelper(AnalysisMethod.java:853)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.ensureGraphParsed(AnalysisMethod.java:836)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysisGraphDecoder.lookupEncodedGraph(InlineBeforeAnalysisGraphDecoder.java:198)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.doInline(PEGraphDecoder.java:1215)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.tryInline(PEGraphDecoder.java:1198)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.trySimplifyInvoke(PEGraphDecoder.java:1053)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.handleInvokeWithCallTarget(PEGraphDecoder.java:1005)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.handleInvoke(PEGraphDecoder.java:991)
    	at jdk.graal.compiler/jdk.graal.compiler.nodes.GraphDecoder.processNextNode(GraphDecoder.java:930)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysisGraphDecoder.processNextNode(InlineBeforeAnalysisGraphDecoder.java:377)
    	at jdk.graal.compiler/jdk.graal.compiler.nodes.GraphDecoder.decode(GraphDecoder.java:658)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.decode(PEGraphDecoder.java:895)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysis.decodeGraph(InlineBeforeAnalysis.java:73)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlowBuilder.parse(MethodTypeFlowBuilder.java:198)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlowBuilder.apply(MethodTypeFlowBuilder.java:608)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.createFlowsGraph(MethodTypeFlow.java:167)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.ensureFlowsGraphCreated(MethodTypeFlow.java:152)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.getOrCreateMethodFlowsGraphInfo(MethodTypeFlow.java:110)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.typestate.DefaultStaticInvokeTypeFlow.lambda$update$0(DefaultStaticInvokeTypeFlow.java:75)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.LightImmutableCollection.forEach(LightImmutableCollection.java:90)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.typestate.DefaultStaticInvokeTypeFlow.update(DefaultStaticInvokeTypeFlow.java:74)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.PointsToAnalysis$1.run(PointsToAnalysis.java:538)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.CompletionExecutor.executeCommand(CompletionExecutor.java:169)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.CompletionExecutor.lambda$executeService$0(CompletionExecutor.java:154)
    	at java.base/java.util.concurrent.ForkJoinTask$RunnableExecuteAction.compute(ForkJoinTask.java:1726)
    	at java.base/java.util.concurrent.ForkJoinTask$RunnableExecuteAction.compute(ForkJoinTask.java:1717)
    	at java.base/java.util.concurrent.ForkJoinTask$InterruptibleTask.exec(ForkJoinTask.java:1641)
    	at java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:507)
    	at java.base/java.util.concurrent.ForkJoinPool$WorkQueue.topLevelExec(ForkJoinPool.java:1491)
    	at java.base/java.util.concurrent.ForkJoinPool.scan(ForkJoinPool.java:2073)
    	at java.base/java.util.concurrent.ForkJoinPool.runWorker(ForkJoinPool.java:2035)
    	at java.base/java.util.concurrent.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:187)
    Caused by: java.lang.ExceptionInInitializerError
    	at clojure.lang.Compiler.<clinit>(Compiler.java:48)
    	at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized0(Native Method)
    	at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized(Unsafe.java:1160)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.ensureClassInitialized(ClassInitializationSupport.java:177)
    	... 57 more
    Caused by: java.lang.NullPointerException: Cannot invoke "clojure.lang.Var.isBound()" because "clojure.lang.Compiler.LOADER" is null
    	at clojure.lang.RT.baseLoader(RT.java:2177)
    	at clojure.lang.RT.load(RT.java:432)
    	at clojure.lang.RT.load(RT.java:424)
    	at clojure.lang.RT.<clinit>(RT.java:338)
    	... 61 more
    
    Context obj StructuredGraph:8467{AnalysisMethod<FactoryThrowMethodHolder.ArityException_constructor_a1d2547410e39e8bb77fe5edfece6a63a05dfd92 -> com.oracle.svm.hosted.code.FactoryMethod@7ac680c8, invoked: true, implInvoked: false, intrinsic: false, inlined: false>}
[thread:43] scope: ForkJoinPool.commonPool-worker-4
  [thread:43] scope: ForkJoinPool.commonPool-worker-4.InlineBeforeAnalysis
  Context: StructuredGraph:8798{AnalysisMethod<FactoryThrowMethodHolder.ArityException_constructor_a1d2547410e39e8bb77fe5edfece6a63a05dfd92 -> com.oracle.svm.hosted.code.FactoryMethod@7ac680c8, invoked: true, implInvoked: false, intrinsic: false, inlined: false>}
    [thread:43] scope: ForkJoinPool.commonPool-worker-4.InlineBeforeAnalysis.PEGraphDecode
    Context: StructuredGraph:8798{AnalysisMethod<FactoryThrowMethodHolder.ArityException_constructor_a1d2547410e39e8bb77fe5edfece6a63a05dfd92 -> com.oracle.svm.hosted.code.FactoryMethod@7ac680c8, invoked: true, implInvoked: false, intrinsic: false, inlined: false>}
    Exception raised in scope ForkJoinPool.commonPool-worker-4.InlineBeforeAnalysis.PEGraphDecode: com.oracle.graal.pointsto.util.AnalysisError: parsing had failed in another thread
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.AnalysisError.shouldNotReachHere(AnalysisError.java:189)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.ensureGraphParsedHelper(AnalysisMethod.java:864)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.ensureGraphParsed(AnalysisMethod.java:836)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysisGraphDecoder.lookupEncodedGraph(InlineBeforeAnalysisGraphDecoder.java:198)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.doInline(PEGraphDecoder.java:1215)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.tryInline(PEGraphDecoder.java:1198)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.trySimplifyInvoke(PEGraphDecoder.java:1053)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.handleInvokeWithCallTarget(PEGraphDecoder.java:1005)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.handleInvoke(PEGraphDecoder.java:991)
    	at jdk.graal.compiler/jdk.graal.compiler.nodes.GraphDecoder.processNextNode(GraphDecoder.java:930)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysisGraphDecoder.processNextNode(InlineBeforeAnalysisGraphDecoder.java:377)
    	at jdk.graal.compiler/jdk.graal.compiler.nodes.GraphDecoder.decode(GraphDecoder.java:658)
    	at jdk.graal.compiler/jdk.graal.compiler.replacements.PEGraphDecoder.decode(PEGraphDecoder.java:895)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.phases.InlineBeforeAnalysis.decodeGraph(InlineBeforeAnalysis.java:73)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlowBuilder.parse(MethodTypeFlowBuilder.java:198)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlowBuilder.apply(MethodTypeFlowBuilder.java:608)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.createFlowsGraph(MethodTypeFlow.java:167)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.ensureFlowsGraphCreated(MethodTypeFlow.java:152)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.MethodTypeFlow.getOrCreateMethodFlowsGraphInfo(MethodTypeFlow.java:110)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.typestate.DefaultStaticInvokeTypeFlow.lambda$update$0(DefaultStaticInvokeTypeFlow.java:75)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.LightImmutableCollection.forEach(LightImmutableCollection.java:90)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.typestate.DefaultStaticInvokeTypeFlow.update(DefaultStaticInvokeTypeFlow.java:74)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.PointsToAnalysis$1.run(PointsToAnalysis.java:538)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.CompletionExecutor.executeCommand(CompletionExecutor.java:169)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.util.CompletionExecutor.lambda$executeService$0(CompletionExecutor.java:154)
    	at java.base/java.util.concurrent.ForkJoinTask$RunnableExecuteAction.compute(ForkJoinTask.java:1726)
    	at java.base/java.util.concurrent.ForkJoinTask$RunnableExecuteAction.compute(ForkJoinTask.java:1717)
    	at java.base/java.util.concurrent.ForkJoinTask$InterruptibleTask.exec(ForkJoinTask.java:1641)
    	at java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:507)
    	at java.base/java.util.concurrent.ForkJoinPool$WorkQueue.topLevelExec(ForkJoinPool.java:1491)
    	at java.base/java.util.concurrent.ForkJoinPool.scan(ForkJoinPool.java:2073)
    	at java.base/java.util.concurrent.ForkJoinPool.runWorker(ForkJoinPool.java:2035)
    	at java.base/java.util.concurrent.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:187)
    Caused by: com.oracle.svm.core.util.UserError$UserException: Class initialization of clojure.lang.Compiler failed. Use the option 
    
        '--initialize-at-run-time=clojure.lang.Compiler'
    
     to explicitly request initialization of this class at run time.
    	at org.graalvm.nativeimage.builder/com.oracle.svm.core.util.UserError.abort(UserError.java:97)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.ensureClassInitialized(ClassInitializationSupport.java:195)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.AllowAllHostedUsagesClassInitializationSupport.computeInitKindAndMaybeInitializeClass(AllowAllHostedUsagesClassInitializationSupport.java:182)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.AllowAllHostedUsagesClassInitializationSupport.computeInitKindAndMaybeInitializeClass(AllowAllHostedUsagesClassInitializationSupport.java:120)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.maybeInitializeAtBuildTime(ClassInitializationSupport.java:161)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.maybeInitializeAtBuildTime(ClassInitializationSupport.java:150)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.SVMHost.isInitialized(SVMHost.java:319)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisType.isInitialized(AnalysisType.java:952)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.maybeEagerlyInitialize(BytecodeParser.java:4475)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.genInvokeStatic(BytecodeParser.java:1708)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.genInvokeStatic(BytecodeParser.java:1701)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.processBytecode(BytecodeParser.java:5468)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.iterateBytecodesForBlock(BytecodeParser.java:3473)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase$SharedBytecodeParser.iterateBytecodesForBlock(SharedGraphBuilderPhase.java:790)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.handleBytecodeBlock(BytecodeParser.java:3433)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.processBlock(BytecodeParser.java:3275)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.build(BytecodeParser.java:1136)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase$SharedBytecodeParser.build(SharedGraphBuilderPhase.java:202)
    	at jdk.graal.compiler/jdk.graal.compiler.java.BytecodeParser.buildRootMethod(BytecodeParser.java:1028)
    	at jdk.graal.compiler/jdk.graal.compiler.java.GraphBuilderPhase$Instance.run(GraphBuilderPhase.java:102)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.phases.SharedGraphBuilderPhase.run(SharedGraphBuilderPhase.java:154)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.Phase.run(Phase.java:49)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.BasePhase.apply(BasePhase.java:435)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.Phase.apply(Phase.java:42)
    	at jdk.graal.compiler/jdk.graal.compiler.phases.Phase.apply(Phase.java:38)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.flow.AnalysisParsedGraph.parseBytecode(AnalysisParsedGraph.java:144)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.parseGraph(AnalysisMethod.java:888)
    	at org.graalvm.nativeimage.pointsto/com.oracle.graal.pointsto.meta.AnalysisMethod.ensureGraphParsedHelper(AnalysisMethod.java:853)
    	... 31 more
    Caused by: java.lang.ExceptionInInitializerError
    	at clojure.lang.Compiler.<clinit>(Compiler.java:48)
    	at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized0(Native Method)
    	at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized(Unsafe.java:1160)
    	at org.graalvm.nativeimage.builder/com.oracle.svm.hosted.classinitialization.ClassInitializationSupport.ensureClassInitialized(ClassInitializationSupport.java:177)
    	... 57 more
    Caused by: java.lang.NullPointerException: Cannot invoke "clojure.lang.Var.isBound()" because "clojure.lang.Compiler.LOADER" is null
    	at clojure.lang.RT.baseLoader(RT.java:2177)
    	at clojure.lang.RT.load(RT.java:432)
    	at clojure.lang.RT.load(RT.java:424)
    	at clojure.lang.RT.<clinit>(RT.java:338)
    	... 61 more
    
    Context obj StructuredGraph:8798{AnalysisMethod<FactoryThrowMethodHolder.ArityException_constructor_a1d2547410e39e8bb77fe5edfece6a63a05dfd92 -> com.oracle.svm.hosted.code.FactoryMethod@7ac680c8, invoked: true, implInvoked: false, intrinsic: false, inlined: false>}

```
