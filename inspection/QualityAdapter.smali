.class public Lcom/rmedia/rplayer/features/player/QualityAdapter;
.super Landroidx/recyclerview/widget/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rmedia/rplayer/features/player/QualityAdapter$OnQualitySelectedListener;,
        Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/c;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/rmedia/rplayer/features/player/QualityAdapter$OnQualitySelectedListener;

.field private final qualities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rmedia/rplayer/models/HlsQuality;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/rmedia/rplayer/features/player/QualityAdapter$OnQualitySelectedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rmedia/rplayer/models/HlsQuality;",
            ">;",
            "Lcom/rmedia/rplayer/features/player/QualityAdapter$OnQualitySelectedListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/c;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->selectedPosition:I

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->qualities:Ljava/util/List;

    iput-object p2, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->listener:Lcom/rmedia/rplayer/features/player/QualityAdapter$OnQualitySelectedListener;

    return-void
.end method

.method public static synthetic a(Lcom/rmedia/rplayer/features/player/QualityAdapter;Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;Lcom/rmedia/rplayer/models/HlsQuality;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rmedia/rplayer/features/player/QualityAdapter;->lambda$onBindViewHolder$0(Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;Lcom/rmedia/rplayer/models/HlsQuality;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;Lcom/rmedia/rplayer/models/HlsQuality;Landroid/view/View;)V
    .locals 1

    iget p3, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->selectedPosition:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->getAdapterPosition()I

    move-result v0

    if-eq p3, v0, :cond_0

    iget p3, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->selectedPosition:I

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/c;->notifyItemChanged(I)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/i;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->selectedPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/c;->notifyItemChanged(I)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->listener:Lcom/rmedia/rplayer/features/player/QualityAdapter$OnQualitySelectedListener;

    invoke-interface {p1, p2}, Lcom/rmedia/rplayer/features/player/QualityAdapter$OnQualitySelectedListener;->onQualitySelected(Lcom/rmedia/rplayer/models/HlsQuality;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->qualities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/i;I)V
    .locals 0

    check-cast p1, Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/QualityAdapter;->onBindViewHolder(Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;I)V
    .locals 4

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->qualities:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rmedia/rplayer/models/HlsQuality;

    iget-object v1, p1, Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;->qualityLabel:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/rmedia/rplayer/models/HlsQuality;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/i;->itemView:Landroid/view/View;

    iget v2, p0, Lcom/rmedia/rplayer/features/player/QualityAdapter;->selectedPosition:I

    const/4 v3, 0x0

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setActivated(Z)V

    iget-object p2, p1, Landroidx/recyclerview/widget/i;->itemView:Landroid/view/View;

    new-instance v1, Lcom/rmedia/rplayer/features/player/j;

    invoke-direct {v1, p0, v3, p1, v0}, Lcom/rmedia/rplayer/features/player/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/i;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/QualityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0075

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/rmedia/rplayer/features/player/QualityAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
