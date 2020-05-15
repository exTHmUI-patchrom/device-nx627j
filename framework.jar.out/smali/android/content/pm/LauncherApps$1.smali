.class Landroid/content/pm/LauncherApps$1;
.super Landroid/content/pm/IOnAppsChangedListener$Stub;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/LauncherApps;


# direct methods
.method constructor <init>(Landroid/content/pm/LauncherApps;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/LauncherApps;

    .line 1155
    iput-object p1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-direct {p0}, Landroid/content/pm/IOnAppsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1188
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1189
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1190
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1191
    :cond_0
    monitor-exit v0

    .line 1192
    return-void

    .line 1191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1176
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1177
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1178
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1179
    :cond_0
    monitor-exit v0

    .line 1180
    return-void

    .line 1179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1164
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1165
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1166
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1167
    :cond_0
    monitor-exit v0

    .line 1168
    return-void

    .line 1167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1200
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1201
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1202
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 1203
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1204
    :cond_0
    monitor-exit v0

    .line 1205
    return-void

    .line 1204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "launcherExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1228
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1229
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p3, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesSuspended([Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1230
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1231
    :cond_0
    monitor-exit v0

    .line 1232
    return-void

    .line 1231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "replacing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1213
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1214
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1215
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1, p3}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 1216
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1217
    :cond_0
    monitor-exit v0

    .line 1218
    return-void

    .line 1217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v0

    .line 1241
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v1}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1242
    .local v2, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v2, p2, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1243
    .end local v2    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1244
    :cond_0
    monitor-exit v0

    .line 1245
    return-void

    .line 1244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shortcuts"    # Landroid/content/pm/ParceledListSlice;

    .line 1253
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1254
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v1, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    monitor-enter v1

    .line 1255
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/LauncherApps$1;->this$0:Landroid/content/pm/LauncherApps;

    invoke-static {v2}, Landroid/content/pm/LauncherApps;->access$100(Landroid/content/pm/LauncherApps;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    .line 1256
    .local v3, "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    invoke-virtual {v3, p2, p1, v0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->postOnShortcutChanged(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 1257
    .end local v3    # "callback":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    goto :goto_0

    .line 1258
    :cond_0
    monitor-exit v1

    .line 1259
    return-void

    .line 1258
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
