.class Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/ApplicationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteRemovingProcessRunnable"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/ApplicationUtils;Ljava/lang/String;)V
    .locals 0
    .param p2, "packName"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 92
    iget-object v0, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/ApplicationUtils;->access$000(Lcn/nubia/server/appmgmt/ApplicationUtils;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/ApplicationUtils;->access$000(Lcn/nubia/server/appmgmt/ApplicationUtils;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 94
    .local v1, "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v2, "tackSets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 96
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->mPackageName:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 101
    .local v4, "i":Ljava/lang/Integer;
    iget-object v5, p0, Lcn/nubia/server/appmgmt/ApplicationUtils$NoteRemovingProcessRunnable;->this$0:Lcn/nubia/server/appmgmt/ApplicationUtils;

    invoke-static {v5}, Lcn/nubia/server/appmgmt/ApplicationUtils;->access$000(Lcn/nubia/server/appmgmt/ApplicationUtils;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v4    # "i":Ljava/lang/Integer;
    goto :goto_1

    .line 103
    .end local v1    # "pkgSets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v2    # "tackSets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
