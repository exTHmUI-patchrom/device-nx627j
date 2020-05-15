.class Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;
.super Ljava/lang/Object;
.source "GPSBehaviorDetection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentUsingGpsRunnable"
.end annotation


# instance fields
.field private mUsingGPS:[Landroid/os/Bundle;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;[Landroid/os/Bundle;)V
    .locals 0
    .param p2, "receiver"    # [Landroid/os/Bundle;

    .line 57
    iput-object p1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->mUsingGPS:[Landroid/os/Bundle;

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 63
    iget-object v0, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->mUsingGPS:[Landroid/os/Bundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$100(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;IZ)V

    goto/16 :goto_3

    .line 68
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->mUsingGPS:[Landroid/os/Bundle;

    array-length v1, v1

    .line 69
    .local v1, "receiverLength":I
    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 70
    .local v3, "gpsListLength":I
    if-nez v1, :cond_1

    if-nez v3, :cond_1

    .line 71
    monitor-exit v0

    return-void

    .line 73
    :cond_1
    if-nez v1, :cond_2

    .line 74
    iget-object v4, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v4}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 76
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v4, "reviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v5, v2

    .line 77
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 78
    iget-object v6, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->mUsingGPS:[Landroid/os/Bundle;

    aget-object v6, v6, v5

    if-eqz v6, :cond_3

    .line 79
    iget-object v6, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->mUsingGPS:[Landroid/os/Bundle;

    aget-object v6, v6, v5

    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 83
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v7}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 84
    iget-object v7, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v7}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 87
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v5, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 89
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 90
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 93
    :cond_8
    iget-object v6, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v6, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$200(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v6}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_a

    .line 95
    :cond_9
    iget-object v6, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    iget-object v7, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v7}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7, v2}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$100(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;IZ)V

    .line 98
    .end local v1    # "receiverLength":I
    .end local v3    # "gpsListLength":I
    .end local v4    # "reviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    :goto_3
    iget-object v1, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$300(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;

    move-result-object v1

    iget-boolean v1, v1, Lcn/nubia/server/appmgmt/behaviorDetection/ApplicationBehaviorController;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "ApplicationBehaviorDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS_LIST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection$CurrentUsingGpsRunnable;->this$0:Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;->access$000(Lcn/nubia/server/appmgmt/behaviorDetection/GPSBehaviorDetection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_b
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
