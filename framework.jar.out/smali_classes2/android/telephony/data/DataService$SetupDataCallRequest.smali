.class final Landroid/telephony/data/DataService$SetupDataCallRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetupDataCallRequest"
.end annotation


# instance fields
.field public final accessNetworkType:I

.field public final allowRoaming:Z

.field public final callback:Landroid/telephony/data/IDataServiceCallback;

.field public final dataProfile:Landroid/telephony/data/DataProfile;

.field public final isRoaming:Z

.field public final linkProperties:Landroid/net/LinkProperties;

.field public final reason:I


# direct methods
.method constructor <init>(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/IDataServiceCallback;)V
    .locals 0
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput p1, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    .line 271
    iput-object p2, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 272
    iput-boolean p3, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    .line 273
    iput-boolean p4, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    .line 274
    iput-object p6, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    .line 275
    iput p5, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    .line 276
    iput-object p7, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 277
    return-void
.end method
