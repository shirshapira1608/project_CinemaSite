<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tickets.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="movies_table">
        <p style = "text-align : left; font-size: 25px">see what ticket already have in your<a style = "font-size: 25px" href ="shopping.aspx" class="shopping_list"><u>buy list!</u></a></p>
        <table>
            <tr>
                <th>Movies</th>
                <th>Summary</th>
                <th>Price</th>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/Eight_mile_ver2.jpg" /></td>
                <td>Eight Mile<p class="summary"> In 1995 Detroit, Jimmy "B-Rabbit" Smith Jr. is a young, unhappy blue-collar worker from a poor family. Jimmy has moved back north of 8 Mile Road to the run-down trailer home in Warren, Michigan of his alcoholic mother Stephanie, his younger sister Lily, and Stephanie's abusive live-in boyfriend Greg. Although encouraged by his friends, Jimmy worries about his potential as a rapper. One night, Jimmy freezes during a rap battle at a local venue, the Shelter, and he leaves the stage humiliated.</p></td>
                <td><% = eight_mile %> NIS</td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/Avengers_Infinity_War.jpg" /></td>
                <td>Avangers Infinity War <p class="summary">Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.</p></td>
                <td><% = avangers_price %> NIS</td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/back-to-the-future.jpg" /></td>
                <td>Back To The Future <p class="summary">In this 1980s sci-fi classic, small-town California teen Marty McFly (Michael J. Fox) is thrown back into the '50s when an experiment by his eccentric scientist friend Doc Brown (Christopher Lloyd) goes awry. Traveling through time in a modified DeLorean car, Marty encounters young versions of his parents (Crispin Glover, Lea Thompson), and must make sure that they fall in love or he'll cease to exist. Even more dauntingly, Marty has to return to his own time and save the life of Doc Brown.</p></td>
                <td><% = back_to_the_future %> NIS</td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/die%20hard.jpg" /></td>
                <td>Die Hard <p class="summary">New York City policeman John McClane (Bruce Willis) is visiting his estranged wife (Bonnie Bedelia) and two daughters on Christmas Eve. He joins her at a holiday party in the headquarters of the Japanese-owned business she works for. But the festivities are interrupted by a group of terrorists who take over the exclusive high-rise, and everyone in it. Very soon McClane realizes that there's no one to save the hostages.</p></td>
                <td><% = die_hard %> NIS</td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/John%20Wick.jpg" /></td>
                <td>John Wick <p class="summary">Legendary assassin John Wick (Keanu Reeves) retired from his violent career after marrying the love of his life. Her sudden death leaves John in deep mourning. When sadistic mobster Iosef Tarasov (Alfie Allen) and his thugs steal John's prized car and kill the puppy that was a last gift from his wife, John unleashes the remorseless killing machine within and seeks vengeance. Meanwhile, Iosef's father (Michael Nyqvist) -- John's former colleague -- puts a huge bounty on John's head.</p></td>
                <td><% = john_wick %> NIS</td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/Jumangi%20the%20next%20level.jpg" /></td>
                <td>Jumangi The Next Level <p class="summary"> The film's plot takes place three years after Welcome to the Jungle, in which the same group of teenagers, along with an old friend and two unwitting additions, become trapped in Jumanji, where they find themselves facing new problems and challenges with both old and new avatars, while having to save the land from a new villain in order to escape.</p></td>
                <td><% = jumangi %> NIS</td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/jurassic%20park.jpg" /></td>
                <td>Jurassic Park <p class="summary"> In Steven Spielberg's massive blockbuster, paleontologists Alan Grant (Sam Neill) and Ellie Sattler (Laura Dern) and mathematician Ian Malcolm (Jeff Goldblum) are among a select group chosen to tour an island theme park populated by dinosaurs created from prehistoric DNA. While the park's mastermind, billionaire John Hammond (Richard Attenborough), assures everyone that the facility is safe, they find out otherwise when various ferocious predators break free and go on the hunt.</p></td>
                <td><% = jurassic_park %> NIS</td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/pirates%20of%20the%20caribeam.jpg" /></td>
                <td>Pirates Of The Caribbean <p class="summary"> Capt. Jack Sparrow (Johnny Depp) arrives at Port Royal in the Caribbean without a ship or crew. His timing is inopportune, however, because later that evening the town is besieged by a pirate ship. The pirates kidnap the governor's daughter, Elizabeth (Keira Knightley), who's in possession of a valuable coin that is linked to a curse that has transformed the pirates into the undead. A gallant blacksmith (Orlando Bloom) in love with Elizabeth allies with Sparrow in pursuit of the pirates.</p></td>
                <td><% = pirates_of_the_caribbean %> NIS</td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/skyscraper.jpg" /></td>
                <td>SkyScraper <p class="summary"> Will Sawyer is a former FBI agent and U.S. war veteran who now assesses security for skyscrapers. While he's on assignment in China, the world's tallest and safest building catches on fire -- and Will gets framed for it. Now a wanted man and on the run, he must find those responsible, clear his name and somehow rescue his family members when they become trapped inside the inferno.</p></td>
                <td><% = skyscraper %> NIS</td>
            </tr>
            <tr>
                <td><img class="movies_pic" src="pictures/spiderman.jpg" /></td>
                <td>Spider-Man <p class="summary">"Spider-Man" centers on student Peter Parker (Tobey Maguire) who, after being bitten by a genetically-altered spider, gains superhuman strength and the spider-like ability to cling to any surface. He vows to use his abilities to fight crime, coming to understand the words of his beloved Uncle Ben: "With great power comes great responsibility."</p></td>
                <td><% = spiderman %> NIS</td>
            </tr>
        </table>
        <form runat="server" method="post" style="width:50%;text-align:center;margin-left:400px">
            <fieldset>
                <h1 class="title">Which movie do you want to buy?</h1>
                    <select class="movie_select" id="buy_movies" name="buy_movies">
                        <option class="movie_button" value="eight_mile">Eight Mile</option>
                        <option class="movie_button" value="avangers_infinity_war">Avangers Infinity War</option>
                        <option class="movie_button" value="back_to_the_future">Back To The Future</option>
                        <option class="movie_button" value="die_hard">Die Hard</option>
                        <option class="movie_button" value="john_wick">John Wick</option>
                        <option class="movie_button" value="jumangi_the_next_level">Jumangi The Next Level</option>
                        <option class="movie_button" value="jurassic_park">Jurassic Park</option>
                        <option class="movie_button" value="pirates_of_the_caribbean">Pirates Of The Caribbean</option>
                        <option class="movie_button" value="skyscraper">SkyScraper</option>
                        <option class="movie_button" value="spiderman">Spider-Man</option>
                    </select>
                    <input class="submit" type="submit" value="submit">
            </fieldset>
        </form>
    </div>
</asp:Content>