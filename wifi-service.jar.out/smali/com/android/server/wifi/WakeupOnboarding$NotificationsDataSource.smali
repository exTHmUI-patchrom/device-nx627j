.class Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;
.super Ljava/lang/Object;
.source "WakeupOnboarding.java"

# interfaces
.implements Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WakeupOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationsDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WakeupOnboarding;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WakeupOnboarding;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WakeupOnboarding;Lcom/android/server/wifi/WakeupOnboarding$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WakeupOnboarding;
    .param p2, "x1"    # Lcom/android/server/wifi/WakeupOnboarding$1;

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;-><init>(Lcom/android/server/wifi/WakeupOnboarding;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Integer;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-static {v0}, Lcom/android/server/wifi/WakeupOnboarding;->access$600(Lcom/android/server/wifi/WakeupOnboarding;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;->getData()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Integer;

    .line 229
    iget-object v0, p0, Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;->this$0:Lcom/android/server/wifi/WakeupOnboarding;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WakeupOnboarding;->access$602(Lcom/android/server/wifi/WakeupOnboarding;I)I

    .line 230
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .line 220
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WakeupOnboarding$NotificationsDataSource;->setData(Ljava/lang/Integer;)V

    return-void
.end method
