.class final Landroid/service/autofill/RequiredValidators;
.super Landroid/service/autofill/InternalValidator;
.source "RequiredValidators.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/RequiredValidators;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RequiredValidators"


# instance fields
.field private final mValidators:[Landroid/service/autofill/InternalValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Landroid/service/autofill/RequiredValidators$1;

    invoke-direct {v0}, Landroid/service/autofill/RequiredValidators$1;-><init>()V

    sput-object v0, Landroid/service/autofill/RequiredValidators;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>([Landroid/service/autofill/InternalValidator;)V
    .locals 1
    .param p1, "validators"    # [Landroid/service/autofill/InternalValidator;

    .line 42
    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    .line 43
    const-string/jumbo v0, "validators"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/autofill/InternalValidator;

    iput-object v0, p0, Landroid/service/autofill/RequiredValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isValid(Landroid/service/autofill/ValueFinder;)Z
    .locals 9
    .param p1, "finder"    # Landroid/service/autofill/ValueFinder;

    .line 48
    iget-object v0, p0, Landroid/service/autofill/RequiredValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 49
    .local v4, "validator":Landroid/service/autofill/InternalValidator;
    invoke-virtual {v4, p1}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v5

    .line 50
    .local v5, "valid":Z
    sget-boolean v6, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_0

    const-string v6, "RequiredValidators"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isValid("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    if-nez v5, :cond_1

    return v2

    .line 48
    .end local v4    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v5    # "valid":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequiredValidators: [validators="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/RequiredValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget-object v0, p0, Landroid/service/autofill/RequiredValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 79
    return-void
.end method
