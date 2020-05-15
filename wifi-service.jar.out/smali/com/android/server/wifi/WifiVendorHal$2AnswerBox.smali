.class Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiVendorHal;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;

.field public value:Landroid/net/wifi/RttManager$RttCapabilities;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiVendorHal;

    .line 1174
    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$2AnswerBox;->value:Landroid/net/wifi/RttManager$RttCapabilities;

    return-void
.end method
