.class final Lcom/urbanairship/push/iam/view/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/view/b;->setNotificationActionButtonGroup(Lcom/urbanairship/push/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/a/c;

.field final synthetic b:Lcom/urbanairship/push/iam/view/b;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/view/b;Lcom/urbanairship/push/a/c;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/urbanairship/push/iam/view/b$2;->b:Lcom/urbanairship/push/iam/view/b;

    iput-object p2, p0, Lcom/urbanairship/push/iam/view/b$2;->a:Lcom/urbanairship/push/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b$2;->b:Lcom/urbanairship/push/iam/view/b;

    invoke-static {v0}, Lcom/urbanairship/push/iam/view/b;->b(Lcom/urbanairship/push/iam/view/b;)Lcom/urbanairship/push/iam/view/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/urbanairship/push/iam/view/b$2;->b:Lcom/urbanairship/push/iam/view/b;

    invoke-static {v0}, Lcom/urbanairship/push/iam/view/b;->b(Lcom/urbanairship/push/iam/view/b;)Lcom/urbanairship/push/iam/view/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/iam/view/b$2;->a:Lcom/urbanairship/push/a/c;

    invoke-interface {v0, v1}, Lcom/urbanairship/push/iam/view/a$a;->a(Lcom/urbanairship/push/a/c;)V

    .line 180
    :cond_0
    return-void
.end method
