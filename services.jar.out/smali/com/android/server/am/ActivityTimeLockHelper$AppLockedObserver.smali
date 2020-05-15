.class Lcom/android/server/am/ActivityTimeLockHelper$AppLockedObserver;
.super Landroid/database/ContentObserver;
.source "ActivityTimeLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityTimeLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLockedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityTimeLockHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityTimeLockHelper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 597
    iput-object p1, p0, Lcom/android/server/am/ActivityTimeLockHelper$AppLockedObserver;->this$0:Lcom/android/server/am/ActivityTimeLockHelper;

    .line 598
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 599
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper$AppLockedObserver;->this$0:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-static {v0}, Lcom/android/server/am/ActivityTimeLockHelper;->access$000(Lcom/android/server/am/ActivityTimeLockHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 603
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://cn.nubia.apptimelock/app_status"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 605
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 609
    iget-object v0, p0, Lcom/android/server/am/ActivityTimeLockHelper$AppLockedObserver;->this$0:Lcom/android/server/am/ActivityTimeLockHelper;

    invoke-static {v0}, Lcom/android/server/am/ActivityTimeLockHelper;->access$100(Lcom/android/server/am/ActivityTimeLockHelper;)V

    .line 610
    return-void
.end method
