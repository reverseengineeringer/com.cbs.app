.class final Lcom/cbs/app/service/social/Twitter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/service/social/Twitter;->a(Lcom/cbs/app/service/social/model/TweetOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/service/social/model/TweetOperation;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/cbs/app/service/social/Twitter;


# direct methods
.method constructor <init>(Lcom/cbs/app/service/social/Twitter;Lcom/cbs/app/service/social/model/TweetOperation;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cbs/app/service/social/Twitter$2;->c:Lcom/cbs/app/service/social/Twitter;

    iput-object p2, p0, Lcom/cbs/app/service/social/Twitter$2;->a:Lcom/cbs/app/service/social/model/TweetOperation;

    iput-object p3, p0, Lcom/cbs/app/service/social/Twitter$2;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter$2;->a:Lcom/cbs/app/service/social/model/TweetOperation;

    invoke-virtual {v0}, Lcom/cbs/app/service/social/model/TweetOperation;->getChoice()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter$2;->c:Lcom/cbs/app/service/social/Twitter;

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter$2;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/service/social/Twitter;->a(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter$2;->c:Lcom/cbs/app/service/social/Twitter;

    invoke-static {v0}, Lcom/cbs/app/service/social/Twitter;->a(Lcom/cbs/app/service/social/Twitter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 117
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter$2;->a:Lcom/cbs/app/service/social/model/TweetOperation;

    invoke-virtual {v0}, Lcom/cbs/app/service/social/model/TweetOperation;->getChoice()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/cbs/app/service/social/Twitter$2;->a:Lcom/cbs/app/service/social/model/TweetOperation;

    invoke-virtual {v0}, Lcom/cbs/app/service/social/model/TweetOperation;->getReplyToAuthor()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter$2;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/cbs/app/service/social/Twitter$2;->c:Lcom/cbs/app/service/social/Twitter;

    iget-object v2, p0, Lcom/cbs/app/service/social/Twitter$2;->a:Lcom/cbs/app/service/social/model/TweetOperation;

    invoke-virtual {v2}, Lcom/cbs/app/service/social/model/TweetOperation;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lcom/cbs/app/service/social/Twitter;->a(Lcom/cbs/app/service/social/Twitter;JLjava/lang/String;)V

    goto :goto_0
.end method
