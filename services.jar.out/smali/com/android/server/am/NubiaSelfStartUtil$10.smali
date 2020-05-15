.class Lcom/android/server/am/NubiaSelfStartUtil$10;
.super Landroid/database/ContentObserver;
.source "NubiaSelfStartUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/NubiaSelfStartUtil;->registerSelfStartObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/NubiaSelfStartUtil;


# direct methods
.method constructor <init>(Lcom/android/server/am/NubiaSelfStartUtil;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/NubiaSelfStartUtil;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 258
    iput-object p1, p0, Lcom/android/server/am/NubiaSelfStartUtil$10;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 260
    iget-object v0, p0, Lcom/android/server/am/NubiaSelfStartUtil$10;->this$0:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-static {v0}, Lcom/android/server/am/NubiaSelfStartUtil;->access$1800(Lcom/android/server/am/NubiaSelfStartUtil;)V

    .line 261
    return-void
.end method
