.class final Landroid/support/v7/widget/GridLayout$MutableInt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableInt"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2124
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$MutableInt;->reset()V

    .line 2125
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    iput p1, p0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 2129
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .prologue
    .line 2132
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 2133
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2137
    iget v0, p0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
