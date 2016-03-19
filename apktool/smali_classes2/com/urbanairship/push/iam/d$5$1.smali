.class final Lcom/urbanairship/push/iam/d$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/d$5;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/iam/d$5;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/d$5;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/urbanairship/push/iam/d$5$1;->a:Lcom/urbanairship/push/iam/d$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/p;)V
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->p()Lcom/urbanairship/push/iam/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/d;->f()V

    .line 670
    return-void
.end method
