.class public final Landroid/companion/AssociationRequest$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "AssociationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/AssociationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/AssociationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mDeviceFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mSingleDevice:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/AssociationRequest$Builder;->mSingleDevice:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    .line 124
    return-void
.end method


# virtual methods
.method public addDeviceFilter(Landroid/companion/DeviceFilter;)Landroid/companion/AssociationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/DeviceFilter<",
            "*>;)",
            "Landroid/companion/AssociationRequest$Builder;"
        }
    .end annotation

    .line 143
    .local p1, "deviceFilter":Landroid/companion/DeviceFilter;, "Landroid/companion/DeviceFilter<*>;"
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    .line 147
    :cond_0
    return-object p0
.end method

.method public build()Landroid/companion/AssociationRequest;
    .locals 4

    .line 154
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->markUsed()V

    .line 155
    new-instance v0, Landroid/companion/AssociationRequest;

    iget-boolean v1, p0, Landroid/companion/AssociationRequest$Builder;->mSingleDevice:Z

    iget-object v2, p0, Landroid/companion/AssociationRequest$Builder;->mDeviceFilters:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;Landroid/companion/AssociationRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 120
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->build()Landroid/companion/AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public setSingleDevice(Z)Landroid/companion/AssociationRequest$Builder;
    .locals 0
    .param p1, "singleDevice"    # Z

    .line 132
    invoke-virtual {p0}, Landroid/companion/AssociationRequest$Builder;->checkNotUsed()V

    .line 133
    iput-boolean p1, p0, Landroid/companion/AssociationRequest$Builder;->mSingleDevice:Z

    .line 134
    return-object p0
.end method
