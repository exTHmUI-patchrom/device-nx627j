.class final Landroid/service/autofill/NegationValidator;
.super Landroid/service/autofill/InternalValidator;
.source "NegationValidator.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/NegationValidator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/service/autofill/NegationValidator$1;

    invoke-direct {v0}, Landroid/service/autofill/NegationValidator$1;-><init>()V

    sput-object v0, Landroid/service/autofill/NegationValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/service/autofill/InternalValidator;)V
    .locals 1
    .param p1, "validator"    # Landroid/service/autofill/InternalValidator;

    .line 35
    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InternalValidator;

    iput-object v0, p0, Landroid/service/autofill/NegationValidator;->mValidator:Landroid/service/autofill/InternalValidator;

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public isValid(Landroid/service/autofill/ValueFinder;)Z
    .locals 1
    .param p1, "finder"    # Landroid/service/autofill/ValueFinder;

    .line 41
    iget-object v0, p0, Landroid/service/autofill/NegationValidator;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {v0, p1}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NegationValidator: [validator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/NegationValidator;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    iget-object v0, p0, Landroid/service/autofill/NegationValidator;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    return-void
.end method
