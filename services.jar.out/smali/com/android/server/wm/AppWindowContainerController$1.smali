.class Lcom/android/server/wm/AppWindowContainerController$1;
.super Ljava/lang/Object;
.source "AppWindowContainerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWindowContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWindowContainerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppWindowContainerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/AppWindowContainerController;

    .line 130
    iput-object p1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 138
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_0

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 145
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowContainerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 148
    .local v1, "startingData":Lcom/android/server/wm/StartingData;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowContainerController;->mContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 149
    .local v2, "container":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 151
    if-nez v1, :cond_1

    .line 156
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x0

    move-object v3, v0

    .line 165
    .local v3, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v4

    .line 167
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception when adding starting window"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v3, :cond_5

    .line 170
    const/4 v4, 0x0

    .line 171
    .local v4, "abort":Z
    iget-object v5, p0, Lcom/android/server/wm/AppWindowContainerController$1;->this$0:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowContainerController;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 174
    iget-boolean v6, v2, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v6, :cond_4

    iget-object v6, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v6, :cond_2

    goto :goto_1

    .line 186
    :cond_2
    iget-object v0, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eq v1, v0, :cond_3

    .line 191
    const/4 v0, 0x1

    goto :goto_2

    .line 194
    :cond_3
    iput-object v3, v2, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    goto :goto_3

    .line 179
    :cond_4
    :goto_1
    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 180
    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 181
    const/4 v0, 0x1

    .line 204
    .end local v4    # "abort":Z
    .local v0, "abort":Z
    :goto_2
    move v4, v0

    .end local v0    # "abort":Z
    .restart local v4    # "abort":Z
    :goto_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 205
    if-eqz v4, :cond_5

    .line 206
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V

    .end local v4    # "abort":Z
    goto :goto_4

    .line 204
    .restart local v4    # "abort":Z
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 211
    .end local v4    # "abort":Z
    :cond_5
    :goto_4
    return-void

    .line 149
    .end local v1    # "startingData":Lcom/android/server/wm/StartingData;
    .end local v2    # "container":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
