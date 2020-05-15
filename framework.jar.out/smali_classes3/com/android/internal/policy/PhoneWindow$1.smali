.class Lcom/android/internal/policy/PhoneWindow$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    .line 261
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 263
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xd

    if-gt v1, v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->access$000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow;->doInvalidatePanelMenu(I)V

    .line 263
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->access$102(Lcom/android/internal/policy/PhoneWindow;Z)Z

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->access$002(Lcom/android/internal/policy/PhoneWindow;I)I

    .line 270
    return-void
.end method
