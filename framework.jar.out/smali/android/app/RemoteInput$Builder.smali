.class public final Landroid/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAllowedDataTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChoices:[Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "resultKey"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    .line 187
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 195
    if-eqz p1, :cond_0

    .line 198
    iput-object p1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    .line 199
    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 302
    if-eqz p2, :cond_0

    .line 303
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    goto :goto_0

    .line 305
    :cond_0
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 307
    :goto_0
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 285
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 288
    :cond_0
    return-object p0
.end method

.method public build()Landroid/app/RemoteInput;
    .locals 9

    .line 315
    new-instance v8, Landroid/app/RemoteInput;

    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget v4, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    iget-object v5, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/util/ArraySet;Landroid/app/RemoteInput$1;)V

    return-object v8
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowDataType(Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "doAllow"    # Z

    .line 252
    if-eqz p2, :cond_0

    .line 253
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 257
    :goto_0
    return-object p0
.end method

.method public setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;
    .locals 1
    .param p1, "allowFreeFormTextInput"    # Z

    .line 272
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    invoke-direct {p0, v0, p1}, Landroid/app/RemoteInput$Builder;->setFlag(IZ)V

    .line 273
    return-object p0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 3
    .param p1, "choices"    # [Ljava/lang/CharSequence;

    .line 227
    if-nez p1, :cond_0

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 230
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 209
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 210
    return-object p0
.end method
