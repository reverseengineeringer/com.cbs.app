.class final Landroid/support/design/widget/g$c;
.super Landroid/support/design/widget/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/design/widget/g;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/g;)V
    .locals 1

    .prologue
    .line 251
    iput-object p1, p0, Landroid/support/design/widget/g$c;->b:Landroid/support/design/widget/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/g$a;-><init>(Landroid/support/design/widget/g;B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/g;B)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Landroid/support/design/widget/g$c;-><init>(Landroid/support/design/widget/g;)V

    return-void
.end method


# virtual methods
.method protected final a()F
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/design/widget/g$c;->b:Landroid/support/design/widget/g;

    invoke-static {v0}, Landroid/support/design/widget/g;->a(Landroid/support/design/widget/g;)F

    move-result v0

    return v0
.end method
