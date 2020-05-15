.class Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;
.super Landroid/database/ContentObserver;
.source "ActivityLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLockedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityLockHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityLockHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 577
    iput-object p1, p0, Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;->this$0:Lcom/android/server/am/ActivityLockHelper;

    .line 578
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 579
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;->this$0:Lcom/android/server/am/ActivityLockHelper;

    invoke-static {v0}, Lcom/android/server/am/ActivityLockHelper;->access$200(Lcom/android/server/am/ActivityLockHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 583
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.applockmanager/locked_app_packages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 585
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 589
    iget-object v0, p0, Lcom/android/server/am/ActivityLockHelper$AppLockedObserver;->this$0:Lcom/android/server/am/ActivityLockHelper;

    invoke-static {v0}, Lcom/android/server/am/ActivityLockHelper;->access$400(Lcom/android/server/am/ActivityLockHelper;)V

    .line 590
    return-void
.end method
