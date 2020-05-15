.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;
.super Ljava/lang/Object;
.source "DataCollectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteEndMusicFlagRunnable"
.end annotation


# instance fields
.field private mPid:I

.field private mTimestamp:J

.field private mUid:I

.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;IIJ)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "timestamp"    # J

    .line 546
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput p2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->mPid:I

    .line 548
    iput p3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->mUid:I

    .line 549
    iput-wide p4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->mTimestamp:J

    .line 550
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 554
    iget-object v0, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$600(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->mUid:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/datacollection/AppInfoUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    return-void

    .line 561
    :cond_1
    iget-wide v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->mTimestamp:J

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v9, 0xea60

    cmp-long v1, v1, v9

    if-lez v1, :cond_2

    .line 562
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$800(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v1, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicRunnable;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    iget v4, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->mPid:I

    iget v5, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->mUid:I

    iget-wide v7, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->mTimestamp:J

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v8}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicRunnable;-><init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;IILjava/lang/String;J)V

    .line 569
    .local v1, "nemr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicRunnable;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$900(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 570
    return-void

    .line 564
    .end local v1    # "nemr":Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicRunnable;
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$NoteEndMusicFlagRunnable;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$500(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    return-void
.end method
