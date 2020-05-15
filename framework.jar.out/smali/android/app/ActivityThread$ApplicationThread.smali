.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/IApplicationThread$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"


# instance fields
.field private mLastProcessState:I

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    .line 823
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    .line 826
    const/4 p1, -0x1

    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread;
    .param p2, "x1"    # Landroid/app/ActivityThread$1;

    .line 823
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/ActivityThread$ApplicationThread;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread$ApplicationThread;
    .param p1, "x1"    # Landroid/content/res/Configuration;

    .line 823
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread$ApplicationThread;
    .param p1, "x1"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 823
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method private dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1454
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 1455
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1456
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1457
    .local v1, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v1, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    .line 1458
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1459
    return-void
.end method

.method private dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .locals 93
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 1337
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v17, 0x400

    div-long v19, v1, v17

    .line 1338
    .local v19, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v21, v1, v17

    .line 1339
    .local v21, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v23, v1, v17

    .line 1341
    .local v23, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    .line 1342
    .local v13, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v13}, Ljava/lang/Runtime;->gc()V

    .line 1343
    invoke-virtual {v13}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v25, v1, v17

    .line 1344
    .local v25, "dalvikMax":J
    invoke-virtual {v13}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v27, v1, v17

    .line 1345
    .local v27, "dalvikFree":J
    sub-long v29, v25, v27

    .line 1347
    .local v29, "dalvikAllocated":J
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v31, 0x0

    aput-object v2, v1, v31

    const-class v2, Landroid/app/Activity;

    const/4 v14, 0x1

    aput-object v2, v1, v14

    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    move-object v11, v1

    .line 1353
    .local v11, "classesToCount":[Ljava/lang/Class;
    invoke-static {v11, v14}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v32

    .line 1354
    .local v32, "instanceCounts":[J
    aget-wide v9, v32, v31

    .line 1355
    .local v9, "appContextInstanceCount":J
    aget-wide v7, v32, v14

    .line 1356
    .local v7, "activityInstanceCount":J
    aget-wide v5, v32, v3

    .line 1357
    .local v5, "webviewInstanceCount":J
    aget-wide v3, v32, v4

    .line 1359
    .local v3, "openSslSocketCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v1

    .line 1360
    .local v1, "viewInstanceCount":J
    move-object/from16 v33, v13

    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v13

    .line 1361
    .local v13, "viewRootInstanceCount":J
    .local v33, "runtime":Ljava/lang/Runtime;
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v12

    .line 1362
    .local v12, "globalAssetCount":I
    move-wide/from16 v35, v13

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v13

    .line 1363
    .local v13, "globalAssetManagerCount":I
    .local v35, "viewRootInstanceCount":J
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v14

    .line 1364
    .local v14, "binderLocalObjectCount":I
    move/from16 v37, v13

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v13

    .line 1365
    .local v13, "binderProxyObjectCount":I
    .local v37, "globalAssetManagerCount":I
    move/from16 v38, v13

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v13

    .line 1366
    .local v13, "binderDeathObjectCount":I
    .local v38, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v39

    .line 1367
    .local v39, "parcelSize":J
    move/from16 v42, v13

    move/from16 v41, v14

    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v13

    .line 1368
    .end local v14    # "binderLocalObjectCount":I
    .local v13, "parcelCount":J
    .local v41, "binderLocalObjectCount":I
    .local v42, "binderDeathObjectCount":I
    move-wide/from16 v43, v13

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v13

    .line 1370
    .local v13, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v43, "parcelCount":J
    move-wide/from16 v45, v1

    const-wide v1, 0x10b00000001L

    .line 1370
    .end local v1    # "viewInstanceCount":J
    .local v45, "viewInstanceCount":J
    invoke-virtual {v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1371
    .local v1, "mToken":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    move-object/from16 v47, v11

    move/from16 v48, v12

    const-wide v11, 0x10500000001L

    .line 1371
    .end local v11    # "classesToCount":[Ljava/lang/Class;
    .end local v12    # "globalAssetCount":I
    .local v47, "classesToCount":[Ljava/lang/Class;
    .local v48, "globalAssetCount":I
    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1372
    nop

    .line 1373
    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v14, :cond_0

    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v14, v14, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v14, "unknown"

    .line 1372
    :goto_0
    const-wide v11, 0x10900000002L

    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1374
    move-wide/from16 v49, v1

    move-wide/from16 v11, v45

    move-object v1, v15

    .line 1374
    .end local v1    # "mToken":J
    .end local v45    # "viewInstanceCount":J
    .local v11, "viewInstanceCount":J
    .local v49, "mToken":J
    move-object/from16 v2, p2

    move-wide/from16 v51, v3

    move/from16 v3, p4

    .line 1374
    .end local v3    # "openSslSocketCount":J
    .local v51, "openSslSocketCount":J
    move/from16 v4, p5

    move-wide/from16 v53, v5

    move-wide/from16 v5, v19

    .line 1374
    .end local v5    # "webviewInstanceCount":J
    .local v53, "webviewInstanceCount":J
    move-wide/from16 v55, v7

    move-wide/from16 v7, v21

    .line 1374
    .end local v7    # "activityInstanceCount":J
    .local v55, "activityInstanceCount":J
    move-wide/from16 v57, v9

    move-wide/from16 v9, v23

    .line 1374
    .end local v9    # "appContextInstanceCount":J
    .local v57, "appContextInstanceCount":J
    move-wide/from16 v59, v11

    move-object/from16 v45, v47

    move/from16 v14, v48

    move-wide/from16 v11, v25

    .line 1374
    .end local v11    # "viewInstanceCount":J
    .end local v47    # "classesToCount":[Ljava/lang/Class;
    .end local v48    # "globalAssetCount":I
    .local v14, "globalAssetCount":I
    .local v45, "classesToCount":[Ljava/lang/Class;
    .local v59, "viewInstanceCount":J
    move-object/from16 v69, v13

    move v0, v14

    move-wide/from16 v61, v35

    move/from16 v63, v37

    move/from16 v65, v38

    move/from16 v64, v41

    move/from16 v66, v42

    move-wide/from16 v67, v43

    const/16 v34, 0x1

    move-wide/from16 v13, v29

    .end local v13    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v14    # "globalAssetCount":I
    .end local v35    # "viewRootInstanceCount":J
    .end local v37    # "globalAssetManagerCount":I
    .end local v38    # "binderProxyObjectCount":I
    .end local v41    # "binderLocalObjectCount":I
    .end local v42    # "binderDeathObjectCount":I
    .end local v43    # "parcelCount":J
    .local v0, "globalAssetCount":I
    .local v61, "viewRootInstanceCount":J
    .local v63, "globalAssetManagerCount":I
    .local v64, "binderLocalObjectCount":I
    .local v65, "binderProxyObjectCount":I
    .local v66, "binderDeathObjectCount":I
    .local v67, "parcelCount":J
    .local v69, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move/from16 v70, v0

    move-object v0, v15

    move-wide/from16 v15, v27

    .line 1374
    .end local v0    # "globalAssetCount":I
    .local v70, "globalAssetCount":I
    invoke-static/range {v1 .. v16}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 1377
    move-wide/from16 v1, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1379
    .end local v49    # "mToken":J
    .restart local v1    # "mToken":J
    const-wide v3, 0x10b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1380
    .local v3, "oToken":J
    move-wide/from16 v5, v59

    const-wide v7, 0x10500000001L

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1382
    .end local v59    # "viewInstanceCount":J
    .local v5, "viewInstanceCount":J
    const-wide v9, 0x10500000002L

    move-wide/from16 v11, v61

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1384
    .end local v61    # "viewRootInstanceCount":J
    .local v11, "viewRootInstanceCount":J
    const-wide v13, 0x10500000003L

    move-wide/from16 v9, v57

    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1386
    .end local v57    # "appContextInstanceCount":J
    .restart local v9    # "appContextInstanceCount":J
    const-wide v13, 0x10500000004L

    move-wide/from16 v7, v55

    invoke-virtual {v0, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1388
    .end local v55    # "activityInstanceCount":J
    .restart local v7    # "activityInstanceCount":J
    const-wide v13, 0x10500000005L

    move/from16 v15, v70

    invoke-virtual {v0, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1390
    .end local v70    # "globalAssetCount":I
    .local v15, "globalAssetCount":I
    const-wide v13, 0x10500000006L

    move-wide/from16 v71, v1

    move/from16 v1, v63

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1392
    .end local v63    # "globalAssetManagerCount":I
    .local v1, "globalAssetManagerCount":I
    .local v71, "mToken":J
    const-wide v13, 0x10500000007L

    move/from16 v2, v64

    invoke-virtual {v0, v13, v14, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1394
    .end local v64    # "binderLocalObjectCount":I
    .local v2, "binderLocalObjectCount":I
    const-wide v13, 0x10500000008L

    move/from16 v73, v1

    move/from16 v1, v65

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1396
    .end local v65    # "binderProxyObjectCount":I
    .local v1, "binderProxyObjectCount":I
    .local v73, "globalAssetManagerCount":I
    const-wide v13, 0x10300000009L

    move/from16 v75, v1

    move/from16 v74, v2

    div-long v1, v39, v17

    .line 1396
    .end local v1    # "binderProxyObjectCount":I
    .end local v2    # "binderLocalObjectCount":I
    .local v74, "binderLocalObjectCount":I
    .local v75, "binderProxyObjectCount":I
    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1398
    const-wide v1, 0x1050000000aL

    move-wide/from16 v13, v67

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1399
    .end local v67    # "parcelCount":J
    .local v13, "parcelCount":J
    const-wide v1, 0x1050000000bL

    move-wide/from16 v76, v5

    move/from16 v5, v66

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1401
    .end local v66    # "binderDeathObjectCount":I
    .local v5, "binderDeathObjectCount":I
    .local v76, "viewInstanceCount":J
    const-wide v1, 0x1050000000cL

    move/from16 v78, v5

    move-wide/from16 v5, v51

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1403
    .end local v51    # "openSslSocketCount":J
    .local v5, "openSslSocketCount":J
    .local v78, "binderDeathObjectCount":I
    const-wide v1, 0x1050000000dL

    move-wide/from16 v79, v5

    move-wide/from16 v5, v53

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1405
    .end local v53    # "webviewInstanceCount":J
    .local v5, "webviewInstanceCount":J
    .local v79, "openSslSocketCount":J
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1408
    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1409
    .local v1, "sToken":J
    move-wide/from16 v81, v3

    move-object/from16 v3, v69

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    .line 1409
    .end local v69    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v3, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v81, "oToken":J
    div-int/lit16 v4, v4, 0x400

    move-wide/from16 v83, v5

    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1411
    .end local v5    # "webviewInstanceCount":J
    .local v83, "webviewInstanceCount":J
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000002L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1413
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1415
    iget-object v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1416
    .local v4, "n":I
    move/from16 v5, v31

    .line 1416
    .local v5, "i":I
    :goto_1
    move-wide/from16 v85, v7

    .line 1416
    .end local v7    # "activityInstanceCount":J
    .local v85, "activityInstanceCount":J
    if-ge v5, v4, :cond_1

    .line 1417
    iget-object v8, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1419
    .local v8, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-wide v6, 0x20b00000004L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1420
    .local v6, "dToken":J
    move-object/from16 v87, v3

    move/from16 v88, v4

    const-wide v3, 0x10900000001L

    .line 1420
    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .local v87, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v88, "n":I
    move-wide/from16 v89, v9

    iget-object v9, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    .line 1420
    .end local v9    # "appContextInstanceCount":J
    .local v89, "appContextInstanceCount":J
    invoke-virtual {v0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1421
    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide v9, 0x10500000002L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1422
    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide v9, 0x10500000003L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1423
    iget v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1425
    iget-object v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    const-wide v9, 0x10900000005L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1426
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1416
    .end local v6    # "dToken":J
    .end local v8    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v7, v85

    move-object/from16 v3, v87

    move/from16 v4, v88

    move-wide/from16 v9, v89

    goto :goto_1

    .line 1428
    .end local v5    # "i":I
    .end local v87    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v88    # "n":I
    .end local v89    # "appContextInstanceCount":J
    .restart local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "n":I
    .restart local v9    # "appContextInstanceCount":J
    :cond_1
    move-object/from16 v87, v3

    move/from16 v88, v4

    move-wide/from16 v89, v9

    .line 1428
    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .end local v9    # "appContextInstanceCount":J
    .restart local v87    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v88    # "n":I
    .restart local v89    # "appContextInstanceCount":J
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1431
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v3

    .line 1432
    .local v3, "assetAlloc":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1433
    const-wide v4, 0x10900000004L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1437
    :cond_2
    if-eqz p6, :cond_6

    .line 1438
    move v6, v15

    move-object/from16 v5, p0

    iget-object v7, v5, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1438
    .end local v15    # "globalAssetCount":I
    .local v6, "globalAssetCount":I
    iget-object v7, v7, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-nez v7, :cond_3

    move/from16 v7, v31

    goto :goto_2

    :cond_3
    iget-object v7, v5, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v7, v7, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1439
    .local v7, "flags":I
    :goto_2
    and-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_5

    sget-boolean v8, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v31, v34

    :goto_4
    move/from16 v8, v31

    .line 1441
    .local v8, "showContents":Z
    const/16 v9, 0x64

    .line 1442
    invoke-static {v9, v8}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v9

    .line 1441
    move-wide/from16 v91, v1

    const-wide v1, 0x10900000005L

    invoke-virtual {v0, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1441
    .end local v1    # "sToken":J
    .end local v7    # "flags":I
    .end local v8    # "showContents":Z
    .local v91, "sToken":J
    goto :goto_5

    .line 1444
    .end local v6    # "globalAssetCount":I
    .end local v91    # "sToken":J
    .restart local v1    # "sToken":J
    .restart local v15    # "globalAssetCount":I
    :cond_6
    move-wide/from16 v91, v1

    move v6, v15

    move-object/from16 v5, p0

    .line 1444
    .end local v1    # "sToken":J
    .end local v15    # "globalAssetCount":I
    .restart local v6    # "globalAssetCount":I
    .restart local v91    # "sToken":J
    :goto_5
    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    .locals 91
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 1185
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v21, 0x400

    div-long v23, v1, v21

    .line 1186
    .local v23, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v25, v1, v21

    .line 1187
    .local v25, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v27, v1, v21

    .line 1189
    .local v27, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    .line 1190
    .local v13, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v13}, Ljava/lang/Runtime;->gc()V

    .line 1191
    invoke-virtual {v13}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v29, v1, v21

    .line 1192
    .local v29, "dalvikMax":J
    invoke-virtual {v13}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v31, v1, v21

    .line 1193
    .local v31, "dalvikFree":J
    sub-long v33, v29, v31

    .line 1195
    .local v33, "dalvikAllocated":J
    const/4 v14, 0x4

    new-array v1, v14, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v35, 0x0

    aput-object v2, v1, v35

    const-class v2, Landroid/app/Activity;

    const/4 v11, 0x1

    aput-object v2, v1, v11

    const-class v2, Landroid/webkit/WebView;

    const/4 v12, 0x2

    aput-object v2, v1, v12

    const-class v2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    const/16 v36, 0x3

    aput-object v2, v1, v36

    move-object v9, v1

    .line 1201
    .local v9, "classesToCount":[Ljava/lang/Class;
    invoke-static {v9, v11}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v37

    .line 1202
    .local v37, "instanceCounts":[J
    aget-wide v7, v37, v35

    .line 1203
    .local v7, "appContextInstanceCount":J
    aget-wide v5, v37, v11

    .line 1204
    .local v5, "activityInstanceCount":J
    aget-wide v3, v37, v12

    .line 1205
    .local v3, "webviewInstanceCount":J
    aget-wide v1, v37, v36

    .line 1207
    .local v1, "openSslSocketCount":J
    move-object/from16 v38, v13

    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v13

    .line 1208
    .local v13, "viewInstanceCount":J
    .local v38, "runtime":Ljava/lang/Runtime;
    move-wide/from16 v39, v13

    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v13

    .line 1209
    .local v13, "viewRootInstanceCount":J
    .local v39, "viewInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v10

    .line 1210
    .local v10, "globalAssetCount":I
    move-wide/from16 v41, v13

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v13

    .line 1211
    .local v13, "globalAssetManagerCount":I
    .local v41, "viewRootInstanceCount":J
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v14

    .line 1212
    .local v14, "binderLocalObjectCount":I
    move/from16 v43, v13

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v13

    .line 1213
    .local v13, "binderProxyObjectCount":I
    .local v43, "globalAssetManagerCount":I
    move/from16 v44, v13

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v13

    .line 1214
    .local v13, "binderDeathObjectCount":I
    .local v44, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v45

    .line 1215
    .local v45, "parcelSize":J
    move/from16 v48, v13

    move/from16 v47, v14

    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v13

    .line 1216
    .end local v14    # "binderLocalObjectCount":I
    .local v13, "parcelCount":J
    .local v47, "binderLocalObjectCount":I
    .local v48, "binderDeathObjectCount":I
    move-wide/from16 v49, v13

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v13

    .line 1218
    .local v13, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v49, "parcelCount":J
    nop

    .line 1219
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    .line 1220
    iget-object v11, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v11, :cond_0

    iget-object v11, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v11, v11, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v11, "unknown"

    .line 1218
    :goto_0
    move-wide/from16 v52, v1

    move-object v1, v15

    .line 1218
    .end local v1    # "openSslSocketCount":J
    .local v52, "openSslSocketCount":J
    move-object/from16 v2, p2

    move-wide/from16 v54, v3

    move/from16 v3, p3

    .line 1218
    .end local v3    # "webviewInstanceCount":J
    .local v54, "webviewInstanceCount":J
    move/from16 v4, p4

    move-wide/from16 v56, v5

    move/from16 v5, p5

    .line 1218
    .end local v5    # "activityInstanceCount":J
    .local v56, "activityInstanceCount":J
    move/from16 v6, p6

    move-wide/from16 v58, v7

    move v7, v14

    .line 1218
    .end local v7    # "appContextInstanceCount":J
    .local v58, "appContextInstanceCount":J
    move-object v8, v11

    move-object/from16 v60, v9

    move v14, v10

    move-wide/from16 v9, v23

    .line 1218
    .end local v9    # "classesToCount":[Ljava/lang/Class;
    .end local v10    # "globalAssetCount":I
    .local v14, "globalAssetCount":I
    .local v60, "classesToCount":[Ljava/lang/Class;
    move v0, v12

    const/16 v51, 0x1

    move-wide/from16 v11, v25

    move-object/from16 v71, v13

    move v0, v14

    move-wide/from16 v61, v39

    move-wide/from16 v63, v41

    move/from16 v65, v43

    move/from16 v67, v44

    move/from16 v66, v47

    move/from16 v68, v48

    move-wide/from16 v69, v49

    move-wide/from16 v13, v27

    .end local v13    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v14    # "globalAssetCount":I
    .end local v39    # "viewInstanceCount":J
    .end local v41    # "viewRootInstanceCount":J
    .end local v43    # "globalAssetManagerCount":I
    .end local v44    # "binderProxyObjectCount":I
    .end local v47    # "binderLocalObjectCount":I
    .end local v48    # "binderDeathObjectCount":I
    .end local v49    # "parcelCount":J
    .local v0, "globalAssetCount":I
    .local v61, "viewInstanceCount":J
    .local v63, "viewRootInstanceCount":J
    .local v65, "globalAssetManagerCount":I
    .local v66, "binderLocalObjectCount":I
    .local v67, "binderProxyObjectCount":I
    .local v68, "binderDeathObjectCount":I
    .local v69, "parcelCount":J
    .local v71, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move/from16 v72, v0

    move-object v0, v15

    move-wide/from16 v15, v29

    .line 1218
    .end local v0    # "globalAssetCount":I
    .local v72, "globalAssetCount":I
    move-wide/from16 v17, v33

    move-wide/from16 v19, v31

    invoke-static/range {v1 .. v20}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    .line 1224
    if-eqz p3, :cond_2

    .line 1229
    move-wide/from16 v2, v61

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1229
    .end local v61    # "viewInstanceCount":J
    .local v2, "viewInstanceCount":J
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1230
    move-wide/from16 v5, v63

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1230
    .end local v63    # "viewRootInstanceCount":J
    .local v5, "viewRootInstanceCount":J
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1231
    move-wide/from16 v7, v58

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 1231
    .end local v58    # "appContextInstanceCount":J
    .restart local v7    # "appContextInstanceCount":J
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1232
    move-wide/from16 v9, v56

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    .line 1232
    .end local v56    # "activityInstanceCount":J
    .local v9, "activityInstanceCount":J
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1234
    move/from16 v11, v72

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1234
    .end local v72    # "globalAssetCount":I
    .local v11, "globalAssetCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1235
    move/from16 v12, v65

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1235
    .end local v65    # "globalAssetManagerCount":I
    .local v12, "globalAssetManagerCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1236
    move/from16 v13, v66

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 1236
    .end local v66    # "binderLocalObjectCount":I
    .local v13, "binderLocalObjectCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1237
    move/from16 v14, v67

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 1237
    .end local v67    # "binderProxyObjectCount":I
    .local v14, "binderProxyObjectCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1239
    move/from16 v15, v68

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 1239
    .end local v68    # "binderDeathObjectCount":I
    .local v15, "binderDeathObjectCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1240
    move/from16 v73, v14

    move/from16 v74, v15

    move-wide/from16 v14, v52

    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 1240
    .end local v15    # "binderDeathObjectCount":I
    .end local v52    # "openSslSocketCount":J
    .local v14, "openSslSocketCount":J
    .local v73, "binderProxyObjectCount":I
    .local v74, "binderDeathObjectCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1243
    move-object/from16 v4, v71

    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    .line 1243
    .end local v71    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v4, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1244
    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1245
    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1246
    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1247
    nop

    .line 1247
    .local v35, "i":I
    :goto_1
    move/from16 v1, v35

    .line 1247
    .end local v35    # "i":I
    .local v1, "i":I
    move-wide/from16 v75, v14

    iget-object v14, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    .line 1247
    .end local v14    # "openSslSocketCount":J
    .local v75, "openSslSocketCount":J
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v1, v14, :cond_1

    .line 1248
    iget-object v14, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1249
    .local v14, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v15, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v77, v12

    move/from16 v78, v13

    iget-wide v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    .line 1250
    .end local v12    # "globalAssetManagerCount":I
    .end local v13    # "binderLocalObjectCount":I
    .local v77, "globalAssetManagerCount":I
    .local v78, "binderLocalObjectCount":I
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1251
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1252
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1253
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1247
    .end local v14    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v35, v1, 0x1

    .line 1247
    .end local v1    # "i":I
    .restart local v35    # "i":I
    move-wide/from16 v14, v75

    move/from16 v12, v77

    move/from16 v13, v78

    goto :goto_1

    .line 1256
    .end local v35    # "i":I
    .end local v77    # "globalAssetManagerCount":I
    .end local v78    # "binderLocalObjectCount":I
    .restart local v12    # "globalAssetManagerCount":I
    .restart local v13    # "binderLocalObjectCount":I
    :cond_1
    move/from16 v77, v12

    move/from16 v78, v13

    .line 1256
    .end local v12    # "globalAssetManagerCount":I
    .end local v13    # "binderLocalObjectCount":I
    .restart local v77    # "globalAssetManagerCount":I
    .restart local v78    # "binderLocalObjectCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1258
    return-void

    .line 1261
    .end local v2    # "viewInstanceCount":J
    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v5    # "viewRootInstanceCount":J
    .end local v7    # "appContextInstanceCount":J
    .end local v9    # "activityInstanceCount":J
    .end local v11    # "globalAssetCount":I
    .end local v73    # "binderProxyObjectCount":I
    .end local v74    # "binderDeathObjectCount":I
    .end local v75    # "openSslSocketCount":J
    .end local v77    # "globalAssetManagerCount":I
    .end local v78    # "binderLocalObjectCount":I
    .restart local v52    # "openSslSocketCount":J
    .restart local v56    # "activityInstanceCount":J
    .restart local v58    # "appContextInstanceCount":J
    .restart local v61    # "viewInstanceCount":J
    .restart local v63    # "viewRootInstanceCount":J
    .restart local v65    # "globalAssetManagerCount":I
    .restart local v66    # "binderLocalObjectCount":I
    .restart local v67    # "binderProxyObjectCount":I
    .restart local v68    # "binderDeathObjectCount":I
    .restart local v71    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v72    # "globalAssetCount":I
    :cond_2
    move-wide/from16 v75, v52

    move-wide/from16 v9, v56

    move-wide/from16 v7, v58

    move-wide/from16 v2, v61

    move-wide/from16 v5, v63

    move/from16 v77, v65

    move/from16 v78, v66

    move/from16 v73, v67

    move/from16 v74, v68

    move-object/from16 v4, v71

    move/from16 v11, v72

    .end local v52    # "openSslSocketCount":J
    .end local v56    # "activityInstanceCount":J
    .end local v58    # "appContextInstanceCount":J
    .end local v61    # "viewInstanceCount":J
    .end local v63    # "viewRootInstanceCount":J
    .end local v65    # "globalAssetManagerCount":I
    .end local v66    # "binderLocalObjectCount":I
    .end local v67    # "binderProxyObjectCount":I
    .end local v68    # "binderDeathObjectCount":I
    .end local v71    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v72    # "globalAssetCount":I
    .restart local v2    # "viewInstanceCount":J
    .restart local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v5    # "viewRootInstanceCount":J
    .restart local v7    # "appContextInstanceCount":J
    .restart local v9    # "activityInstanceCount":J
    .restart local v11    # "globalAssetCount":I
    .restart local v73    # "binderProxyObjectCount":I
    .restart local v74    # "binderDeathObjectCount":I
    .restart local v75    # "openSslSocketCount":J
    .restart local v77    # "globalAssetManagerCount":I
    .restart local v78    # "binderLocalObjectCount":I
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    const-string v1, " Objects"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    const-string v1, "%21s %8d %21s %8d"

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "Views:"

    aput-object v14, v13, v35

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v51

    const-string v14, "ViewRootImpl:"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 1264
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v36

    .line 1263
    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1266
    const-string v1, "%21s %8d %21s %8d"

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "AppContexts:"

    aput-object v14, v13, v35

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v51

    const-string v14, "Activities:"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 1267
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v36

    .line 1266
    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    const-string v1, "%21s %8d %21s %8d"

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "Assets:"

    aput-object v14, v13, v35

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v51

    const-string v14, "AssetManagers:"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 1270
    move/from16 v14, v77

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1270
    .end local v77    # "globalAssetManagerCount":I
    .local v14, "globalAssetManagerCount":I
    aput-object v15, v13, v36

    .line 1269
    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    const-string v1, "%21s %8d %21s %8d"

    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "Local Binders:"

    aput-object v15, v13, v35

    move/from16 v15, v78

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1272
    .end local v78    # "binderLocalObjectCount":I
    .local v15, "binderLocalObjectCount":I
    aput-object v16, v13, v51

    const-string v16, "Proxy Binders:"

    const/16 v17, 0x2

    aput-object v16, v13, v17

    .line 1273
    move/from16 v12, v73

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1273
    .end local v73    # "binderProxyObjectCount":I
    .local v12, "binderProxyObjectCount":I
    aput-object v16, v13, v36

    .line 1272
    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    const-string v1, "%21s %8d %21s %8d"

    move-wide/from16 v79, v2

    const/4 v13, 0x4

    new-array v2, v13, [Ljava/lang/Object;

    .line 1274
    .end local v2    # "viewInstanceCount":J
    .local v79, "viewInstanceCount":J
    const-string v3, "Parcel memory:"

    aput-object v3, v2, v35

    move-wide/from16 v81, v5

    div-long v5, v45, v21

    .line 1274
    .end local v5    # "viewRootInstanceCount":J
    .local v81, "viewRootInstanceCount":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v51

    const-string v3, "Parcel count:"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 1275
    move-wide/from16 v5, v69

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1275
    .end local v69    # "parcelCount":J
    .local v5, "parcelCount":J
    aput-object v3, v2, v36

    .line 1274
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    const-string v1, "%21s %8d %21s %8d"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Death Recipients:"

    aput-object v2, v3, v35

    move/from16 v2, v74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1276
    .end local v74    # "binderDeathObjectCount":I
    .local v2, "binderDeathObjectCount":I
    aput-object v13, v3, v51

    const-string v13, "OpenSSL Sockets:"

    move/from16 v83, v2

    const/4 v2, 0x2

    aput-object v13, v3, v2

    .line 1277
    .end local v2    # "binderDeathObjectCount":I
    .local v83, "binderDeathObjectCount":I
    move-wide/from16 v84, v5

    move-wide/from16 v5, v75

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1277
    .end local v75    # "openSslSocketCount":J
    .local v5, "openSslSocketCount":J
    .local v84, "parcelCount":J
    aput-object v13, v3, v36

    .line 1276
    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    const-string v1, "%21s %8d"

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "WebViews:"

    aput-object v2, v3, v35

    move-wide/from16 v86, v5

    move-wide/from16 v5, v54

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v54    # "webviewInstanceCount":J
    .local v5, "webviewInstanceCount":J
    .local v86, "openSslSocketCount":J
    aput-object v2, v3, v51

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1281
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    const-string v1, " SQL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    const-string v1, "%21s %8d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "MEMORY_USED:"

    aput-object v2, v3, v35

    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v51

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1284
    const-string v1, "%21s %8d %21s %8d"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "PAGECACHE_OVERFLOW:"

    aput-object v2, v3, v35

    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v2, v2, 0x400

    .line 1285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v51

    const-string v2, "MALLOC_SIZE:"

    const/4 v13, 0x2

    aput-object v2, v3, v13

    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v36

    .line 1284
    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1286
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    iget-object v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1288
    .local v1, "N":I
    if-lez v1, :cond_6

    .line 1289
    const-string v2, " DATABASES"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    const-string v2, "  %8s %8s %14s %14s  %s"

    const/4 v3, 0x5

    new-array v13, v3, [Ljava/lang/Object;

    const-string/jumbo v16, "pgsz"

    aput-object v16, v13, v35

    const-string v16, "dbsz"

    aput-object v16, v13, v51

    const-string v16, "Lookaside(b)"

    const/16 v17, 0x2

    aput-object v16, v13, v17

    const-string v16, "cache"

    aput-object v16, v13, v36

    const-string v16, "Dbname"

    const/16 v17, 0x4

    aput-object v16, v13, v17

    invoke-static {v0, v2, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1292
    move/from16 v2, v35

    .line 1292
    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 1293
    iget-object v13, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1294
    .local v13, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    move/from16 v88, v1

    const-string v1, "  %8s %8s %14s %14s  %s"

    .line 1294
    .end local v1    # "N":I
    .local v88, "N":I
    move-object/from16 v89, v4

    new-array v4, v3, [Ljava/lang/Object;

    .line 1295
    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v89, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move-object/from16 v90, v4

    iget-wide v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v16, 0x0

    cmp-long v3, v3, v16

    if-lez v3, :cond_3

    iget-wide v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const-string v3, " "

    :goto_3
    aput-object v3, v90, v35

    .line 1296
    iget-wide v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    cmp-long v3, v3, v16

    if-lez v3, :cond_4

    iget-wide v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    const-string v3, " "

    :goto_4
    aput-object v3, v90, v51

    .line 1297
    iget v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v3, :cond_5

    iget v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    const-string v3, " "

    :goto_5
    const/4 v4, 0x2

    aput-object v3, v90, v4

    iget-object v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    aput-object v3, v90, v36

    iget-object v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    const/16 v16, 0x4

    aput-object v3, v90, v16

    .line 1294
    move-object/from16 v3, v90

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1292
    .end local v13    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v88

    move-object/from16 v4, v89

    const/4 v3, 0x5

    goto :goto_2

    .line 1303
    .end local v2    # "i":I
    .end local v88    # "N":I
    .end local v89    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v1    # "N":I
    .restart local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    :cond_6
    move/from16 v88, v1

    move-object/from16 v89, v4

    const/4 v4, 0x2

    .line 1303
    .end local v1    # "N":I
    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v88    # "N":I
    .restart local v89    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v1

    .line 1304
    .local v1, "assetAlloc":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 1305
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    const-string v2, " Asset Allocations"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1311
    :cond_7
    if-eqz p7, :cond_b

    .line 1312
    move-object/from16 v3, p0

    iget-object v13, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v13, v13, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v13, :cond_8

    iget-object v13, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v13, v13, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v13, v13, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v13

    if-nez v4, :cond_9

    :cond_8
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_a

    :cond_9
    move/from16 v35, v51

    nop

    :cond_a
    move/from16 v4, v35

    .line 1315
    .local v4, "showContents":Z
    const-string v13, " "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    const-string v13, " Unreachable memory"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    const/16 v13, 0x64

    invoke-static {v13, v4}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    .end local v4    # "showContents":Z
    goto :goto_6

    .line 1319
    :cond_b
    move-object/from16 v3, p0

    :goto_6
    return-void
.end method

.method static synthetic lambda$scheduleTrimMemory$0(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I

    .line 1522
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$1500(Landroid/app/ActivityThread;I)V

    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 829
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$100(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 831
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 834
    :cond_1
    monitor-exit v0

    .line 835
    return-void

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public attachAgent(Ljava/lang/String;)V
    .locals 2
    .param p1, "agent"    # Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1116
    return-void
.end method

.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 17
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "instrumentationName"    # Landroid/content/ComponentName;
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p7, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p8, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p9, "debugMode"    # I
    .param p10, "enableBinderTracking"    # Z
    .param p11, "trackAllocation"    # Z
    .param p12, "isRestrictedBackupMode"    # Z
    .param p13, "persistent"    # Z
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p16, "services"    # Ljava/util/Map;
    .param p17, "coreSettings"    # Landroid/os/Bundle;
    .param p18, "buildSerial"    # Ljava/lang/String;
    .param p19, "autofillCompatibilityEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    .line 958
    if-eqz p16, :cond_0

    .line 981
    invoke-static/range {p16 .. p16}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 984
    :cond_0
    move-object/from16 v2, p17

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 986
    new-instance v3, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v3}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 987
    .local v3, "data":Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v4, p1

    iput-object v4, v3, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 988
    move-object/from16 v5, p2

    iput-object v5, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 989
    move-object/from16 v6, p3

    iput-object v6, v3, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 990
    move-object/from16 v7, p4

    iput-object v7, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 991
    move-object/from16 v8, p6

    iput-object v8, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 992
    move-object/from16 v9, p7

    iput-object v9, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 993
    move-object/from16 v10, p8

    iput-object v10, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 994
    move/from16 v11, p9

    iput v11, v3, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 995
    move/from16 v12, p10

    iput-boolean v12, v3, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    .line 996
    move/from16 v13, p11

    iput-boolean v13, v3, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    .line 997
    move/from16 v14, p12

    iput-boolean v14, v3, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 998
    move/from16 v15, p13

    iput-boolean v15, v3, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 999
    move-object/from16 v1, p14

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 1000
    move-object/from16 v1, p15

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1001
    move-object/from16 v1, p5

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1002
    move-object/from16 v1, p18

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    .line 1003
    move/from16 v1, p19

    iput-boolean v1, v3, Landroid/app/ActivityThread$AppBindData;->autofillCompatibilityEnabled:Z

    .line 1004
    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1005
    return-void
.end method

.method public clearDnsCache()V
    .locals 1

    .line 1032
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 1035
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    .line 1036
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1131
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1132
    return-void
.end method

.method public dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1140
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1142
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1143
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1144
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 1145
    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1146
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x88

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1150
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1147
    :catch_0
    move-exception v1

    .line 1148
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1150
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1151
    nop

    .line 1152
    return-void

    .line 1150
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1463
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_0

    .line 1469
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1475
    nop

    .line 1474
    nop

    .line 1477
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1487
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 1474
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dup FD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1474
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1472
    return-void

    .line 1474
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 1488
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1489
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1491
    :goto_1
    return-void
.end method

.method public dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1448
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1449
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1450
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1451
    return-void
.end method

.method public dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "managed"    # Z
    .param p2, "mallocInfo"    # Z
    .param p3, "runGc"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 1105
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 1106
    .local v0, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-boolean p1, v0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    .line 1107
    iput-boolean p2, v0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    .line 1108
    iput-boolean p3, v0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    .line 1109
    iput-object p4, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 1110
    iput-object p5, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1111
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x87

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 1112
    return-void
.end method

.method public dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    .locals 11
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "args"    # [Ljava/lang/String;

    .line 1173
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 1174
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v10, v0

    .line 1176
    .local v10, "pw":Ljava/io/PrintWriter;
    move-object v2, p0

    move-object v3, v10

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_0
    invoke-direct/range {v2 .. v9}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 1179
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1180
    nop

    .line 1181
    return-void

    .line 1178
    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 1179
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v0

    throw v2
.end method

.method public dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .locals 9
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .param p7, "args"    # [Ljava/lang/String;

    .line 1325
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 1327
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    :try_start_0
    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1330
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1331
    nop

    .line 1332
    return-void

    .line 1329
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1330
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v0

    throw v2
.end method

.method public dumpMessageHistory()V
    .locals 3

    .line 1693
    new-instance v0, Landroid/util/LogPrinter;

    const-string/jumbo v1, "nubialog"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 1694
    .local v0, "lp":Landroid/util/LogPrinter;
    const-string v1, "dumpMessageHistory in mainLooper"

    invoke-virtual {v0, v1}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 1695
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v0, v2}, Landroid/os/Looper;->dumpMessageHistory(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1696
    return-void
.end method

.method public dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1156
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1158
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1159
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1160
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1161
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1165
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1162
    :catch_0
    move-exception v1

    .line 1163
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpProvider failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1165
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1166
    nop

    .line 1167
    return-void

    .line 1165
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1055
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1057
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1058
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1059
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1060
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1064
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1061
    :catch_0
    move-exception v1

    .line 1062
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1064
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1065
    nop

    .line 1066
    return-void

    .line 1064
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public handleTrustStorageUpdate()V
    .locals 1

    .line 1672
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->handleTrustStorageUpdate()V

    .line 1673
    return-void
.end method

.method public notifyCleartextNetwork([B)V
    .locals 1
    .param p1, "firstPacket"    # [B

    .line 1619
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    .line 1622
    :cond_0
    return-void
.end method

.method public processInBackground()V
    .locals 3

    .line 1050
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1051
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1052
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 1099
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7f

    invoke-static {v0, v1, p2, p1, p3}, Landroid/app/ActivityThread;->access$700(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1100
    return-void
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I

    .line 1501
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 1502
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 1503
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 1504
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 1505
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    .line 1506
    iput p5, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    .line 1507
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1508
    return-void
.end method

.method public final runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 1008
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1009
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1010
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1011
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9e

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1012
    return-void
.end method

.method public scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1023
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1024
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I

    .line 908
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 909
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 910
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 911
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 912
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 917
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 918
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1135
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1136
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I

    .line 866
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 867
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 868
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 869
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 871
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 872
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    .line 885
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 886
    new-instance v1, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v1}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 887
    .local v1, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 888
    iput-object p2, v1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 889
    iput-object p3, v1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 895
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 896
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->access$402(Landroid/app/ActivityThread;Z)Z

    .line 897
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v3}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 898
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v3, v0}, Landroid/app/ActivityThread;->access$502(Landroid/app/ActivityThread;Z)Z

    .line 899
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 901
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x72

    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 902
    monitor-exit v2

    .line 904
    return-void

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleDeepFreeze()V
    .locals 0

    .line 1643
    return-void
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 876
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 877
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 878
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 880
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 881
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1614
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1615
    return-void
.end method

.method public scheduleEnterDoze()V
    .locals 0

    .line 1635
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .line 1015
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1016
    return-void
.end method

.method public scheduleFreeze()V
    .locals 0

    .line 1627
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 3
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .line 1585
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1586
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->access$402(Landroid/app/ActivityThread;Z)Z

    .line 1587
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1588
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->access$502(Landroid/app/ActivityThread;Z)Z

    .line 1589
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1591
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x91

    invoke-virtual {v1, v2, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1592
    monitor-exit v0

    .line 1594
    return-void

    .line 1592
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scheduleLeaveDoze()V
    .locals 0

    .line 1639
    return-void
.end method

.method public scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1664
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1665
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1666
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1667
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1668
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .line 1094
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1095
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1538
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v1, Landroid/util/Pair;

    .line 1539
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1538
    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1540
    return-void
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I

    move-object v1, p0

    .line 844
    const/4 v0, 0x0

    move/from16 v2, p9

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 845
    new-instance v12, Landroid/app/ActivityThread$ReceiverData;

    iget-object v3, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 846
    invoke-virtual {v3}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    const/4 v9, 0x0

    move-object v3, v12

    move-object v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    .line 847
    .local v3, "r":Landroid/app/ActivityThread$ReceiverData;
    move-object v4, p2

    iput-object v4, v3, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 848
    move-object/from16 v5, p3

    iput-object v5, v3, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 853
    iget-object v6, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v6}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 854
    :try_start_0
    iget-object v7, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/app/ActivityThread;->access$402(Landroid/app/ActivityThread;Z)Z

    .line 855
    iget-object v7, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v7}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 856
    iget-object v7, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v7, v0}, Landroid/app/ActivityThread;->access$502(Landroid/app/ActivityThread;Z)Z

    .line 857
    iget-object v0, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 859
    :cond_0
    iget-object v0, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v7, 0x71

    invoke-virtual {v0, v7, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 860
    monitor-exit v6

    .line 862
    return-void

    .line 860
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 11
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v9, p5

    .line 1075
    iget-object v0, v1, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1076
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1078
    .local v2, "mgr":Landroid/app/IActivityManager;
    if-eqz v9, :cond_0

    .line 1079
    :try_start_0
    invoke-virtual {v9, v3}, Landroid/os/Bundle;->setAllowFds(Z)Z

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1081
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v7, 0x0

    .line 1082
    if-nez p2, :cond_1

    .line 1081
    :goto_1
    move v8, v3

    goto :goto_2

    .line 1082
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    goto :goto_1

    .line 1081
    :goto_2
    move-object v3, v0

    move v4, p3

    move-object v5, p4

    move-object v6, v9

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    nop

    .line 1084
    :goto_3
    return-void

    .line 1087
    .end local v2    # "mgr":Landroid/app/IActivityManager;
    :cond_2
    move/from16 v2, p9

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1088
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1090
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/content/pm/ParceledListSlice;

    .line 929
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 931
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ServiceStartArgs;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 932
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ServiceStartArgs;

    .line 933
    .local v2, "ssa":Landroid/app/ServiceStartArgs;
    new-instance v3, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v3}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 934
    .local v3, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v3, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 935
    iget-boolean v4, v2, Landroid/app/ServiceStartArgs;->taskRemoved:Z

    iput-boolean v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 936
    iget v4, v2, Landroid/app/ServiceStartArgs;->startId:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 937
    iget v4, v2, Landroid/app/ServiceStartArgs;->flags:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 938
    iget-object v4, v2, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    iput-object v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 940
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v5, 0x73

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 931
    .end local v2    # "ssa":Landroid/app/ServiceStartArgs;
    .end local v3    # "s":Landroid/app/ActivityThread$ServiceArgsData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 942
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .line 838
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x89

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 839
    return-void
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 945
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 946
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .line 1019
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1020
    return-void
.end method

.method public scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1677
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1678
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 1534
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x90

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1535
    return-void
.end method

.method public scheduleTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .line 1522
    sget-object v0, Landroid/app/-$$Lambda$ActivityThread$ApplicationThread$tUGFX7CUhzB4Pg5wFd5yeqOnu38;->INSTANCE:Landroid/app/-$$Lambda$ActivityThread$ApplicationThread$tUGFX7CUhzB4Pg5wFd5yeqOnu38;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1522
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 1525
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 1526
    .local v1, "choreographer":Landroid/view/Choreographer;
    if-eqz v1, :cond_0

    .line 1527
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1529
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 1531
    :goto_0
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 921
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 922
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 923
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 925
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 926
    return-void
.end method

.method public scheduleUnfreeze(Z)V
    .locals 0
    .param p1, "isOneWay"    # Z

    .line 1631
    return-void
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 1511
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1512
    return-void
.end method

.method public setDelayBroadCastState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1702
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {p1}, Landroid/app/ActivityThread;->access$1302(Z)Z

    .line 1703
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "pacFileUrl"    # Landroid/net/Uri;

    .line 1040
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1039
    :goto_0
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1041
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v1

    .line 1042
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_1

    .line 1043
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    goto :goto_1

    .line 1045
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1047
    :goto_1
    return-void
.end method

.method public setNetworkBlockSeq(J)V
    .locals 2
    .param p1, "procStateSeq"    # J

    .line 1574
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$1000(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1575
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, p1, p2}, Landroid/app/ActivityThread;->access$1102(Landroid/app/ActivityThread;J)J

    .line 1576
    monitor-exit v0

    .line 1577
    return-void

    .line 1576
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPreLoadingWebViewState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1707
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {p1}, Landroid/app/ActivityThread;->access$1402(Z)Z

    .line 1708
    return-void
.end method

.method public setProcessState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1543
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1544
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .param p1, "group"    # I

    .line 1124
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setStuckValueState(ZZJJJJLjava/lang/String;)V
    .locals 13
    .param p1, "debugStuckValueEnable"    # Z
    .param p2, "debugTag"    # Z
    .param p3, "loopThreshold"    # J
    .param p5, "handleMessageThreshold"    # J
    .param p7, "launchActivityMinThreshold"    # J
    .param p9, "launchActivityMaxThreshold"    # J
    .param p11, "launchActivity"    # Ljava/lang/String;

    .line 1685
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-static/range {v1 .. v12}, Landroid/app/ActivityThread;->access$1200(Landroid/app/ActivityThread;ZZJJJJLjava/lang/String;)V

    .line 1688
    return-void
.end method

.method public startBinderTracking()V
    .locals 3

    .line 1648
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1649
    return-void
.end method

.method public stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 1654
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x97

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1657
    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 1655
    :catch_0
    move-exception v0

    .line 1657
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1658
    nop

    .line 1659
    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 1495
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1496
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 1515
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1516
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1517
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1518
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1519
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 4
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .line 1547
    monitor-enter p0

    .line 1548
    :try_start_0
    iget v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    if-eq v0, p1, :cond_1

    .line 1549
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    .line 1551
    const/4 v0, 0x0

    .line 1552
    .local v0, "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    const/4 v1, 0x1

    .line 1553
    .local v1, "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    const/4 v2, 0x1

    .line 1555
    .local v2, "dalvikProcessState":I
    const/4 v3, 0x5

    if-gt p1, v3, :cond_0

    .line 1556
    const/4 v2, 0x0

    .line 1558
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldalvik/system/VMRuntime;->updateProcessState(I)V

    .line 1564
    .end local v0    # "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    .end local v1    # "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    .end local v2    # "dalvikProcessState":I
    :cond_1
    monitor-exit p0

    .line 1565
    return-void

    .line 1564
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateTimePrefs(I)V
    .locals 1
    .param p1, "timeFormatPreference"    # I

    .line 1600
    if-nez p1, :cond_0

    .line 1601
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v0, "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :goto_0
    goto :goto_1

    .line 1602
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1603
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1607
    :cond_1
    const/4 v0, 0x0

    .line 1609
    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :goto_1
    invoke-static {v0}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 1610
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    .line 1027
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1028
    return-void
.end method
