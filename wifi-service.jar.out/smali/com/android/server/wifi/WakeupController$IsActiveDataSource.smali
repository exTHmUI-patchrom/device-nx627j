.class Lcom/android/server/wifi/WakeupController$IsActiveDataSource;
.super Ljava/lang/Object;
.source "WakeupController.java"

# interfaces
.implements Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WakeupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsActiveDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WakeupController;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WakeupController;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/android/server/wifi/WakeupController$IsActiveDataSource;->this$0:Lcom/android/server/wifi/WakeupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WakeupController;Lcom/android/server/wifi/WakeupController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WakeupController;
    .param p2, "x1"    # Lcom/android/server/wifi/WakeupController$1;

    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WakeupController$IsActiveDataSource;-><init>(Lcom/android/server/wifi/WakeupController;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Boolean;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController$IsActiveDataSource;->this$0:Lcom/android/server/wifi/WakeupController;

    invoke-static {v0}, Lcom/android/server/wifi/WakeupController;->access$500(Lcom/android/server/wifi/WakeupController;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupController$IsActiveDataSource;->getData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Boolean;

    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/WakeupController$IsActiveDataSource;->this$0:Lcom/android/server/wifi/WakeupController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WakeupController;->access$502(Lcom/android/server/wifi/WakeupController;Z)Z

    .line 370
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .line 360
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WakeupController$IsActiveDataSource;->setData(Ljava/lang/Boolean;)V

    return-void
.end method
