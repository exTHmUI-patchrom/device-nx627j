.class Lcom/android/server/wm/NubiaAdvertiseManager$1;
.super Ljava/lang/Object;
.source "NubiaAdvertiseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/NubiaAdvertiseManager;->initBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NubiaAdvertiseManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NubiaAdvertiseManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/NubiaAdvertiseManager;

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/NubiaAdvertiseManager$1;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/NubiaAdvertiseManager$1;->this$0:Lcom/android/server/wm/NubiaAdvertiseManager;

    invoke-static {v0}, Lcom/android/server/wm/NubiaAdvertiseManager;->access$000(Lcom/android/server/wm/NubiaAdvertiseManager;)V

    .line 85
    return-void
.end method
