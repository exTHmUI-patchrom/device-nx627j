.class Lcom/android/server/dreams/DreamController$5;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamController;->setDozeScreenBrightnessFor627(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamController;

.field final synthetic val$brightness:I


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamController;

    .line 611
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$5;->this$0:Lcom/android/server/dreams/DreamController;

    iput p2, p0, Lcom/android/server/dreams/DreamController$5;->val$brightness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$5;->this$0:Lcom/android/server/dreams/DreamController;

    const-string v1, "/sys/kernel/lcd_enhance/sec_aod_mode"

    iget v2, p0, Lcom/android/server/dreams/DreamController$5;->val$brightness:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/dreams/DreamController;->setDozeScreenBrightnessFor627(Ljava/lang/String;I)V

    .line 614
    return-void
.end method
