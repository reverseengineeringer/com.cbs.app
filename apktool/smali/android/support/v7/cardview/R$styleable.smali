.class public final Landroid/support/v7/cardview/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/cardview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CardView:[I

.field public static final CardView_cardBackgroundColor:I = 0x3

.field public static final CardView_cardCornerRadius:I = 0x4

.field public static final CardView_cardElevation:I = 0x5

.field public static final CardView_cardMaxElevation:I = 0x6

.field public static final CardView_cardPreventCornerOverlap:I = 0x8

.field public static final CardView_cardUseCompatPadding:I = 0x7

.field public static final CardView_contentPadding:I = 0x9

.field public static final CardView_contentPaddingBottom:I = 0xd

.field public static final CardView_contentPaddingLeft:I = 0xa

.field public static final CardView_contentPaddingRight:I = 0xb

.field public static final CardView_contentPaddingTop:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/cardview/R$styleable;->CardView:[I

    return-void

    :array_0
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01004a
        0x7f01004b
        0x7f01004c
        0x7f01004d
        0x7f01004e
        0x7f01004f
        0x7f010050
        0x7f010051
        0x7f010052
        0x7f010053
        0x7f010054
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
