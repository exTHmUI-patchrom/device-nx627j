.class final Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;
.super Landroid/os/IBSPApplicationManager$Stub;
.source "BSPApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BSPApplicationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ApplicationManagerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BSPApplicationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BSPApplicationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BSPApplicationManagerService;

    .line 185
    iput-object p1, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-direct {p0}, Landroid/os/IBSPApplicationManager$Stub;-><init>()V

    return-void
.end method

.method private dumpBSPApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$400(Lcom/android/server/BSPApplicationManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump meminfo from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    return-void

    .line 420
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 421
    .local v1, "opti":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    .line 422
    aget-object v2, p3, v1

    .line 423
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    .line 424
    goto :goto_2

    .line 426
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 427
    invoke-static {v2}, Landroid/util/NubiaPerfConfig;->getCpuGpu(Ljava/lang/String;)Z

    move-result v3

    .line 428
    .local v3, "getCmd":Z
    if-eqz v3, :cond_2

    .line 429
    iget-object v4, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v4}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/cpuperf/PerformanceController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 437
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknow option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .end local v2    # "opt":Ljava/lang/String;
    .end local v3    # "getCmd":Z
    :goto_1
    goto :goto_0

    .line 440
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "duration"    # J

    .line 335
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/cpuperf/PerformanceController;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 338
    :cond_0
    return-void
.end method

.method public boostForTgpa(IILjava/lang/String;)I
    .locals 2
    .param p1, "boostType"    # I
    .param p2, "boostLevel"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/cpuperf/PerformanceController;->boostForTgpa(IILjava/lang/String;)I

    move-result v0

    .line 388
    :cond_0
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 394
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->dumpBSPApplicationManagerService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public getForegroundPackageName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$000(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/BSPApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$000(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/BSPApplicationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BSPApplicationUtils;->getForegroundPackageName()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewOptimizeInfoByActivityName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cpuperf/PerformanceController;->getViewOptimizeInfoByActivityName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInFullOnCpuset(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/cpuperf/PerformanceController;->isInFullOnCpuset(Ljava/lang/String;)Z

    move-result v0

    .line 359
    :cond_0
    return v0
.end method

.method public isInNoTransitionAnim(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/cpuperf/PerformanceController;->isInNoTransitionAnim(Ljava/lang/String;)Z

    move-result v0

    .line 351
    :cond_0
    return v0
.end method

.method public noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .line 370
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/cpuperf/PerformanceController;->noteAppBackground(ILjava/lang/String;ILjava/lang/String;J)V

    .line 373
    :cond_0
    return-void
.end method

.method public noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "timestamp"    # J
    .param p8, "isColdLaunch"    # Z

    move-object v0, p0

    .line 364
    iget-object v1, v0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, v0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/cpuperf/PerformanceController;->noteAppForeground(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 367
    :cond_0
    return-void
.end method

.method public noteFocusChangedLw(Ljava/lang/String;)V
    .locals 9
    .param p1, "newFocus"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "packagename":Ljava/lang/String;
    const/4 v1, 0x0

    .line 197
    .local v1, "activityname":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 198
    sget-object v2, Lcn/nubiamini/server/appmgmt/BSPPkgNameList;->mVideoActivityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 199
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    move-object v1, v3

    .line 201
    goto :goto_1

    .line 203
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 204
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 205
    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v2}, Lcom/android/server/BSPApplicationManagerService;->access$200(Lcom/android/server/BSPApplicationManagerService;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-static {v2, v3}, Lcom/android/server/BSPApplicationManagerService;->access$202(Lcom/android/server/BSPApplicationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 209
    :cond_2
    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v2}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    .line 210
    invoke-static {v2}, Lcom/android/server/BSPApplicationManagerService;->access$200(Lcom/android/server/BSPApplicationManagerService;)Landroid/os/IBinder;

    move-result-object v4

    const-string v5, "com.media.codec"

    const/16 v6, 0xc

    const-wide/16 v7, 0x0

    .line 209
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/cpuperf/PerformanceController;->acquirePerformanceLock(Landroid/os/IBinder;Ljava/lang/String;IJ)V

    .line 214
    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v2, v1}, Lcom/android/server/BSPApplicationManagerService;->access$302(Lcom/android/server/BSPApplicationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v2}, Lcom/android/server/BSPApplicationManagerService;->access$300(Lcom/android/server/BSPApplicationManagerService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v2}, Lcom/android/server/BSPApplicationManagerService;->access$300(Lcom/android/server/BSPApplicationManagerService;)Ljava/lang/String;

    move-result-object v2

    if-eq v2, v1, :cond_4

    .line 219
    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v2}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v3}, Lcom/android/server/BSPApplicationManagerService;->access$200(Lcom/android/server/BSPApplicationManagerService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/cpuperf/PerformanceController;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 220
    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v2, v1}, Lcom/android/server/BSPApplicationManagerService;->access$302(Lcom/android/server/BSPApplicationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .end local v0    # "packagename":Ljava/lang/String;
    .end local v1    # "activityname":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public notePausingActivity(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isVisiblePackage"    # Z
    .param p6, "topActivityPackageName"    # Ljava/lang/String;
    .param p7, "topActivity"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$000(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/BSPApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$000(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/BSPApplicationUtils;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/BSPApplicationUtils;->notePausingActivity(IILjava/lang/String;ZLjava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/cpuperf/PerformanceController;->notePausingActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$500(Lcom/android/server/BSPApplicationManagerService;)V

    .line 278
    :cond_1
    return-void
.end method

.method public noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$000(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/BSPApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$000(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/BSPApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/BSPApplicationUtils;->noteRemovingProcess(ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method

.method public noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/cpuperf/PerformanceController;->noteResumedAppDie(IILjava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$500(Lcom/android/server/BSPApplicationManagerService;)V

    .line 300
    :cond_0
    return-void
.end method

.method public noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "stackId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "isHomeActivity"    # Z

    .line 250
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$000(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/BSPApplicationUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$000(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/BSPApplicationUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/BSPApplicationUtils;->noteResumingActivity(IILjava/lang/String;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/cpuperf/PerformanceController;->noteResumingActivity(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 255
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$500(Lcom/android/server/BSPApplicationManagerService;)V

    .line 262
    :cond_1
    return-void
.end method

.method public releasePerformanceLock(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 341
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cpuperf/PerformanceController;->releasePerformanceLock(Landroid/os/IBinder;)V

    .line 344
    :cond_0
    return-void
.end method

.method public setBrightnessMode()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v0}, Lcom/android/server/BSPApplicationManagerService;->access$400(Lcom/android/server/BSPApplicationManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x1

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 232
    .local v0, "brightness":I
    if-eq v0, v2, :cond_0

    .line 233
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    .line 234
    .local v1, "drp":Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    iput v0, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    .line 235
    iget-object v2, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    iget-object v2, v2, Lcom/android/server/BSPApplicationManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    .line 237
    .end local v1    # "drp":Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    :cond_0
    return-void
.end method

.method public setThreadCpusetForTgpa(IZ)I
    .locals 2
    .param p1, "tid"    # I
    .param p2, "bigCluster"    # Z

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/server/BSPApplicationManagerService$ApplicationManagerStub;->this$0:Lcom/android/server/BSPApplicationManagerService;

    invoke-static {v1}, Lcom/android/server/BSPApplicationManagerService;->access$100(Lcom/android/server/BSPApplicationManagerService;)Lcom/android/server/cpuperf/PerformanceController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/cpuperf/PerformanceController;->setThreadCpusetForTgpa(IZ)I

    move-result v0

    .line 380
    :cond_0
    return v0
.end method
