.class final Landroid/telephony/data/DataService$SetInitialAttachApnRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetInitialAttachApnRequest"
.end annotation


# instance fields
.field public final callback:Landroid/telephony/data/IDataServiceCallback;

.field public final dataProfile:Landroid/telephony/data/DataProfile;

.field public final isRoaming:Z


# direct methods
.method constructor <init>(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    .locals 0
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 298
    iput-boolean p2, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    .line 299
    iput-object p3, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 300
    return-void
.end method
