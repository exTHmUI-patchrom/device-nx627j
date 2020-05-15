.class final Landroid/content/ContentProviderClient$CursorWrapperInner;
.super Landroid/database/CrossProcessCursorWrapper;
.source "ContentProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorWrapperInner"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field final synthetic this$0:Landroid/content/ContentProviderClient;


# direct methods
.method constructor <init>(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 584
    iput-object p1, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->this$0:Landroid/content/ContentProviderClient;

    .line 585
    invoke-direct {p0, p2}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 582
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 586
    iget-object p1, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 587
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 591
    iget-object v0, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 592
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    .line 593
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 602
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient$CursorWrapperInner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 605
    nop

    .line 606
    return-void

    .line 604
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
