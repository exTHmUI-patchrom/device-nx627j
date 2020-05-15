.class Landroid/accounts/AbstractAccountAuthenticator$3;
.super Ljava/lang/Object;
.source "AbstractAccountAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AbstractAccountAuthenticator;->startAddAccountSession(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AbstractAccountAuthenticator;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;

.field final synthetic val$response:Landroid/accounts/AccountAuthenticatorResponse;


# direct methods
.method constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/accounts/AccountAuthenticatorResponse;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AbstractAccountAuthenticator;

    .line 800
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    iput-object p2, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$authTokenType:Ljava/lang/String;

    iput-object p3, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p4, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$response:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 803
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 804
    .local v0, "sessionBundle":Landroid/os/Bundle;
    const-string v1, "android.accounts.AbstractAccountAuthenticato.KEY_AUTH_TOKEN_TYPE"

    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v1, "android.accounts.AbstractAccountAuthenticator.KEY_REQUIRED_FEATURES"

    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$requiredFeatures:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 806
    const-string v1, "android.accounts.AbstractAccountAuthenticator.KEY_OPTIONS"

    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 807
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 808
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "accountSessionBundle"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 809
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$3;->val$response:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v2, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 810
    return-void
.end method
