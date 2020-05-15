.class public Landroid/accounts/AccountAndUser;
.super Ljava/lang/Object;
.source "AccountAndUser.java"


# instance fields
.field public account:Landroid/accounts/Account;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;I)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 30
    iput p2, p0, Landroid/accounts/AccountAndUser;->userId:I

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 34
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 35
    :cond_0
    instance-of v1, p1, Landroid/accounts/AccountAndUser;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 36
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/accounts/AccountAndUser;

    .line 37
    .local v1, "other":Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/accounts/AccountAndUser;->userId:I

    iget v4, v1, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 43
    iget-object v0, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/accounts/AccountAndUser;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v1}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
