.class final Landroid/telephony/data/DataService$DeactivateDataCallRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeactivateDataCallRequest"
.end annotation


# instance fields
.field public final callback:Landroid/telephony/data/IDataServiceCallback;

.field public final cid:I

.field public final reason:I


# direct methods
.method constructor <init>(IILandroid/telephony/data/IDataServiceCallback;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    .line 286
    iput p2, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    .line 287
    iput-object p3, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 288
    return-void
.end method
