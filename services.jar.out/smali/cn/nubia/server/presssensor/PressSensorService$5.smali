.class Lcn/nubia/server/presssensor/PressSensorService$5;
.super Ljava/lang/Object;
.source "PressSensorService.java"

# interfaces
.implements Lcn/nubia/server/presssensor/PressRankDetector$PressRankCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressSensorService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRank:I

.field final synthetic this$0:Lcn/nubia/server/presssensor/PressSensorService;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressSensorService;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressSensorService;

    .line 201
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->mRank:I

    return-void
.end method

.method private getRelaxedThreshold(I)I
    .locals 1
    .param p1, "threshold"    # I

    .line 205
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x64

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public onPressRankChanged(I)V
    .locals 6
    .param p1, "rank"    # I

    .line 228
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressSensorService;->access$1200(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 229
    :try_start_0
    sget-boolean v1, Lcn/nubia/server/presssensor/PressSensorService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "PressSensorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rank change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    if-lez p1, :cond_3

    const/16 v1, 0xa

    if-le p1, v1, :cond_1

    goto :goto_2

    .line 236
    :cond_1
    iput p1, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->mRank:I

    .line 237
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v1}, Lcn/nubia/server/presssensor/PressSensorService;->access$1200(Lcn/nubia/server/presssensor/PressSensorService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .local v2, "record":Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    :try_start_1
    invoke-virtual {v2}, Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;->getListener()Lnubia/os/presssensor/IRankListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lnubia/os/presssensor/IRankListener;->onRankChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    goto :goto_1

    .line 240
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "PressSensorService"

    const-string/jumbo v5, "onRankChanged error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v2    # "record":Lcn/nubia/server/presssensor/PressSensorService$RankListenerRecord;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 244
    :cond_2
    monitor-exit v0

    .line 245
    return-void

    .line 233
    :cond_3
    :goto_2
    const-string v1, "PressSensorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid rank "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-exit v0

    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onThresholdChanged(I)V
    .locals 4
    .param p1, "threshold"    # I

    .line 210
    const-string v0, "PressSensorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rank: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->mRank:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0, p1}, Lcn/nubia/server/presssensor/PressSensorService$5;->getRelaxedThreshold(I)I

    move-result v0

    .line 212
    .local v0, "relaxedThreshold":I
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v1}, Lcn/nubia/server/presssensor/PressSensorService;->access$1000(Lcn/nubia/server/presssensor/PressSensorService;)Lcn/nubia/server/presssensor/PressGestureSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->isValidThreshold(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->mRank:I

    if-gez v1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    invoke-static {v1}, Lcn/nubia/server/presssensor/PressSensorService;->access$1100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_press_threshold"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->this$0:Lcn/nubia/server/presssensor/PressSensorService;

    .line 220
    invoke-static {v1}, Lcn/nubia/server/presssensor/PressSensorService;->access$1100(Lcn/nubia/server/presssensor/PressSensorService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_press_threshold_rank"

    iget v3, p0, Lcn/nubia/server/presssensor/PressSensorService$5;->mRank:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    return-void

    .line 214
    :cond_1
    :goto_0
    return-void
.end method
