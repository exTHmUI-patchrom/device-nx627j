.class public Landroid/hardware/biometrics/BiometricPrompt$Builder;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    .line 111
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/biometrics/BiometricPrompt;
    .locals 9

    .line 198
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 199
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "negative_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 201
    .local v1, "negative":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    new-instance v2, Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v4, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget-object v7, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$1;)V

    return-object v2

    .line 204
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Negative text must be set and non-empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Title must be set and non-empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 140
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 141
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    if-eqz p2, :cond_1

    .line 184
    if-eqz p3, :cond_0

    .line 187
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "negative_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 188
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-direct {v0, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 189
    return-object p0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    if-eqz p2, :cond_1

    .line 160
    if-eqz p3, :cond_0

    .line 163
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "positive_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 164
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-direct {v0, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 165
    return-object p0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 130
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "subtitle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 131
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 120
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 121
    return-object p0
.end method
