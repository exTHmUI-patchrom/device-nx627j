.class public Landroid/hardware/location/ContextHubTransaction$Response;
.super Ljava/lang/Object;
.source "ContextHubTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContents:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private mResult:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITR;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Landroid/hardware/location/ContextHubTransaction$Response;, "Landroid/hardware/location/ContextHubTransaction$Response<TR;>;"
    .local p2, "contents":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mResult:I

    .line 141
    iput-object p2, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mContents:Ljava/lang/Object;

    .line 142
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 150
    .local p0, "this":Landroid/hardware/location/ContextHubTransaction$Response;, "Landroid/hardware/location/ContextHubTransaction$Response<TR;>;"
    iget-object v0, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mContents:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 146
    .local p0, "this":Landroid/hardware/location/ContextHubTransaction$Response;, "Landroid/hardware/location/ContextHubTransaction$Response<TR;>;"
    iget v0, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mResult:I

    return v0
.end method
