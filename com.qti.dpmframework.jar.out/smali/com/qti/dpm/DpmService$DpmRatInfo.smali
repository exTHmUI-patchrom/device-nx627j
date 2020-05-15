.class Lcom/qti/dpm/DpmService$DpmRatInfo;
.super Ljava/lang/Object;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DpmRatInfo"
.end annotation


# instance fields
.field ifNameV4:Ljava/lang/String;

.field ifNameV6:Ljava/lang/String;

.field ipAddrV4:Ljava/lang/String;

.field ipAddrV6:Ljava/lang/String;

.field networkState:I

.field networkType:I

.field subType:I

.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method public constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 2

    .line 242
    iput-object p1, p0, Lcom/qti/dpm/DpmService$DpmRatInfo;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmRatInfo;->ipAddrV4:Ljava/lang/String;

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmRatInfo;->ipAddrV6:Ljava/lang/String;

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmRatInfo;->ifNameV4:Ljava/lang/String;

    .line 246
    const-string v0, ""

    iput-object v0, p0, Lcom/qti/dpm/DpmService$DpmRatInfo;->ifNameV6:Ljava/lang/String;

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/qti/dpm/DpmService$DpmRatInfo;->networkType:I

    .line 248
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-static {p1, v1}, Lcom/qti/dpm/DpmService;->access$000(Lcom/qti/dpm/DpmService;Landroid/net/NetworkInfo$State;)I

    move-result p1

    iput p1, p0, Lcom/qti/dpm/DpmService$DpmRatInfo;->networkState:I

    .line 249
    iput v0, p0, Lcom/qti/dpm/DpmService$DpmRatInfo;->subType:I

    .line 250
    return-void
.end method
