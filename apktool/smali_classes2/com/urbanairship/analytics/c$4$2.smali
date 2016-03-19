.class final Lcom/urbanairship/analytics/c$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/c$4;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Lcom/urbanairship/analytics/c$4;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/c$4;Landroid/app/Activity;J)V
    .locals 1

    .prologue
    .line 359
    iput-object p1, p0, Lcom/urbanairship/analytics/c$4$2;->c:Lcom/urbanairship/analytics/c$4;

    iput-object p2, p0, Lcom/urbanairship/analytics/c$4$2;->a:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/urbanairship/analytics/c$4$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/p;)V
    .locals 6

    .prologue
    .line 362
    invoke-virtual {p1}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/c$4$2;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/urbanairship/analytics/c$4$2;->b:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/urbanairship/analytics/c;->b(Lcom/urbanairship/analytics/c;Landroid/app/Activity;IJ)V

    .line 363
    return-void
.end method
