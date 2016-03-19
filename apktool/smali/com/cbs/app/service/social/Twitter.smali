.class public Lcom/cbs/app/service/social/Twitter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/social/TwitterOAuthResponse;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

.field private c:Lcom/cbs/app/service/social/OAuthBuilder;

.field private d:Lcom/cbs/app/service/social/TwitterOAuthTokens;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/cbs/app/service/social/Twitter;->a:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/service/social/Twitter;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    .line 34
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    invoke-virtual {v0, p0}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->setTwitterOAuthResponse(Lcom/cbs/app/service/social/TwitterOAuthResponse;)V

    .line 35
    new-instance v0, Lcom/cbs/app/service/social/OAuthBuilder;

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cbs/app/service/social/OAuthBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/service/social/Twitter;->c:Lcom/cbs/app/service/social/OAuthBuilder;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/service/social/Twitter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/service/social/Twitter;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 25
    .line 1066
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->c:Lcom/cbs/app/service/social/OAuthBuilder;

    iget-object v2, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    invoke-virtual {v1, v2, p3, p1, p2}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;J)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/OAuthRequestBundle;)V

    :goto_0
    return-void

    .line 1068
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->b()V

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    const-string v1, "403"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string p2, "Already exists"

    .line 143
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 161
    :goto_0
    if-eqz v0, :cond_1

    .line 162
    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    :cond_1
    return-void

    .line 145
    :pswitch_0
    if-eqz p1, :cond_2

    const-string v0, "Tweet was successful"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tweet failed\nresponse = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_1
    if-eqz p1, :cond_3

    const-string v0, "Re-Tweet was successful"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Re-Tweet failed\nresponse = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_2
    if-eqz p1, :cond_4

    const-string v0, "Reply-Tweet was successful"

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reply-Tweet failed\nresponse = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :pswitch_3
    if-eqz p1, :cond_5

    const-string v0, "follow request was successful"

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "follow request failed\nresponse = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_4
    if-eqz p1, :cond_6

    const-string v0, "favorite tweet was successful"

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "favorite tweet failed\nresponse = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private b()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->a:Landroid/content/Context;

    const-class v2, Lcom/cbs/app/view/TwitterWebOAuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->D(Landroid/content/Context;)Lcom/cbs/app/service/social/TwitterOAuthTokens;

    move-result-object v1

    iput-object v1, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    .line 47
    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    if-nez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    iget-object v1, v1, Lcom/cbs/app/service/social/TwitterOAuthTokens;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    iget-object v1, v1, Lcom/cbs/app/service/social/TwitterOAuthTokens;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    iget-object v1, v1, Lcom/cbs/app/service/social/TwitterOAuthTokens;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->b()V

    .line 62
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->c:Lcom/cbs/app/service/social/OAuthBuilder;

    iget-object v2, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    invoke-virtual {v1, v2, p1, p2}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Lcom/cbs/app/service/social/TwitterOAuthTokens;J)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/OAuthRequestBundle;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/cbs/app/service/social/model/TweetOperation;)V
    .locals 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    const v1, 0x7f0300f3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    const v0, 0x7f0f0364

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 97
    invoke-virtual {p1}, Lcom/cbs/app/service/social/model/TweetOperation;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/cbs/app/service/social/model/TweetOperation;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/cbs/app/service/social/Twitter;->a:Landroid/content/Context;

    const v5, 0x1030073

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Tweet Message"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Done"

    new-instance v3, Lcom/cbs/app/service/social/Twitter$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/cbs/app/service/social/Twitter$2;-><init>(Lcom/cbs/app/service/social/Twitter;Lcom/cbs/app/service/social/model/TweetOperation;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/cbs/app/service/social/Twitter$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/service/social/Twitter$1;-><init>(Lcom/cbs/app/service/social/Twitter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 127
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->c:Lcom/cbs/app/service/social/OAuthBuilder;

    iget-object v2, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    invoke-virtual {v1, v2, p1}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/OAuthRequestBundle;)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->b()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/cbs/app/service/social/Twitter;->a(ZLjava/lang/String;I)V

    .line 132
    return-void
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->c:Lcom/cbs/app/service/social/OAuthBuilder;

    iget-object v2, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    invoke-virtual {v1, v2, p1, p2}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Lcom/cbs/app/service/social/TwitterOAuthTokens;J)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/OAuthRequestBundle;)V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->b()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter;->b:Lcom/cbs/app/service/social/TwitterOAuthImpl;

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter;->c:Lcom/cbs/app/service/social/OAuthBuilder;

    iget-object v2, p0, Lcom/cbs/app/service/social/Twitter;->d:Lcom/cbs/app/service/social/TwitterOAuthTokens;

    invoke-virtual {v1, v2, p1}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/TwitterOAuthImpl;->a(Lcom/cbs/app/service/social/OAuthRequestBundle;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/service/social/Twitter;->b()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/cbs/app/service/social/Twitter;->a(ZLjava/lang/String;I)V

    .line 137
    return-void
.end method
