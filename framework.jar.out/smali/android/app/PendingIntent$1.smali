.class Landroid/app/PendingIntent$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "PendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/PendingIntent;

    .line 982
    iput-object p1, p0, Landroid/app/PendingIntent$1;->this$0:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 985
    iget-object v0, p0, Landroid/app/PendingIntent$1;->this$0:Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/PendingIntent;->access$000(Landroid/app/PendingIntent;)V

    .line 986
    return-void
.end method
